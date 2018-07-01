module LoanHelper
    def loan_title loan
        "Loan between #{loan.lender.email} (lender) and #{loan.borrower.email} (borrower)"
    end

    def display_amount loan
        "$#{loan.amount / 100}"
    end
end