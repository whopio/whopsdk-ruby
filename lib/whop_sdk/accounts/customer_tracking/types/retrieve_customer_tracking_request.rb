# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module CustomerTracking
      module Types
        class RetrieveCustomerTrackingRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
