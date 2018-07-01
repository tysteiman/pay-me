module LoanHelper
    def loan_title loan
        "Loan between #{loan.lender.email} (lender) and #{loan.borrower.email} (borrower)"
    end

    def display_amount(loan, remaining = false)
        amt = remaining ? loan.amount_remaining : loan.amount
        "$#{amt / 100}"
    end
end