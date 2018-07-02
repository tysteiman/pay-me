class Loan < ApplicationRecord
    belongs_to :lender, class_name: 'User', foreign_key: 'lender_id'
    belongs_to :borrower, class_name: 'User', foreign_key: 'borrower_id'

    has_many :payments

    def process_payment
        self.amount_remaining = amount - total_payments
        self.completed        = true if amount_remaining <= 0

        self.save
    end

    def percent_paid
        (total_payments.to_f / amount.to_f) * 100
    end

    private

    def total_payments
        payments.sum :amount
    end
end
