class LoansController < ApplicationController
    def show
        @loan = Loan.find_by(id: params[:id])
    end
end