# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module SupportedMethods
      module Types
        # Fee terms for payouts to this method: a percentage of the payout amount plus a fixed fee. The quotes carry the
        # exact fee for a specific amount.
        class ListSupportedMethodsResponseDataItemFeeStructure < Internal::Types::Model
          field :fixed, -> { Whop_sdk::Types::Money }, optional: false, nullable: false

          field :percentage, -> { Integer }, optional: false, nullable: false
        end
      end
    end
  end
end
