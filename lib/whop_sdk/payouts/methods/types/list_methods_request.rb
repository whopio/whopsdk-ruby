# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        class ListMethodsRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: true, nullable: false

          field :user_id, -> { String }, optional: true, nullable: false

          field :status, -> { Whop_sdk::Payouts::Methods::Types::ListMethodsRequestStatus }, optional: true, nullable: false

          field :amount, -> { Integer }, optional: true, nullable: false

          field :currency, -> { String }, optional: true, nullable: false

          field :include_limits, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
