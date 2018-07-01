class PaymentsController < ApplicationController
    def new
        @payment = Payment.new
    end

    def create
        @payment = Payment.new(permitted_params)

        if @payment.save
            flash[:success] = 'You have successfully paid!'
            redirect_to loan_path(@payment.loan)
        else
            flash[:danger] = @payment.errors.full_messages.join ', '
            render :new
        end
    end

    private

    def permitted_params
        params.require(:payment).permit(:loan_id, :user_id, :name, :amount)
    end
end