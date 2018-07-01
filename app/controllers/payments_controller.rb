class PaymentsController < ApplicationController
    def new
        @payment = Payment.new
        @loan    = Loan.find_by id: params[:id]
    end

    def create
        @payment = Payment.new(permitted_params)
        @payment.amount = @payment.amount * 100

        if @payment.save
            @payment.loan.process_payment

            flash[:success] = 'You have successfully paid!'
            redirect_to loan_path(@payment.loan)
        else
            flash[:danger] = @payment.errors.full_messages.join ', '
            render :new
        end
    end

    private

    def permitted_params
        params.require(:payment).permit(:loan_id, :user_id, :notes, :amount)
    end
end