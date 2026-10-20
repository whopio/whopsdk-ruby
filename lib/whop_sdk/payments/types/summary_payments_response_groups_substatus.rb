# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Types
      # How many of the matching payments are in each substatus. Every substatus is present, including those with a
      # count of zero.
      class SummaryPaymentsResponseGroupsSubstatus < Internal::Types::Model
        field :auto_refunded, -> { Integer }, optional: false, nullable: false

        field :blocked, -> { Integer }, optional: false, nullable: false

        field :canceled, -> { Integer }, optional: false, nullable: false

        field :dispute_closed, -> { Integer }, optional: false, nullable: false

        field :dispute_lost, -> { Integer }, optional: false, nullable: false

        field :dispute_needs_response, -> { Integer }, optional: false, nullable: false

        field :dispute_under_review, -> { Integer }, optional: false, nullable: false

        field :dispute_warning, -> { Integer }, optional: false, nullable: false

        field :dispute_warning_closed, -> { Integer }, optional: false, nullable: false

        field :dispute_warning_needs_response, -> { Integer }, optional: false, nullable: false

        field :dispute_warning_under_review, -> { Integer }, optional: false, nullable: false

        field :dispute_won, -> { Integer }, optional: false, nullable: false

        field :drafted, -> { Integer }, optional: false, nullable: false

        field :failed, -> { Integer }, optional: false, nullable: false

        field :incomplete, -> { Integer }, optional: false, nullable: false

        field :partially_refunded, -> { Integer }, optional: false, nullable: false

        field :past_due, -> { Integer }, optional: false, nullable: false

        field :pending, -> { Integer }, optional: false, nullable: false

        field :price_too_low, -> { Integer }, optional: false, nullable: false

        field :refunded, -> { Integer }, optional: false, nullable: false

        field :requires_capture, -> { Integer }, optional: false, nullable: false

        field :resolution_lost, -> { Integer }, optional: false, nullable: false

        field :resolution_needs_response, -> { Integer }, optional: false, nullable: false

        field :resolution_under_review, -> { Integer }, optional: false, nullable: false

        field :resolution_won, -> { Integer }, optional: false, nullable: false

        field :succeeded, -> { Integer }, optional: false, nullable: false

        field :uncollectible, -> { Integer }, optional: false, nullable: false

        field :unresolved, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
