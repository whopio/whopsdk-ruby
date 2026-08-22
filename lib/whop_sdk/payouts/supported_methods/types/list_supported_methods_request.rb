# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module SupportedMethods
      module Types
        class ListSupportedMethodsRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: true, nullable: false

          field :user_id, -> { String }, optional: true, nullable: false

          field :country, -> { String }, optional: true, nullable: false

          field :amount, -> { Integer }, optional: true, nullable: false

          field :currency, -> { String }, optional: true, nullable: false

          field :supported_payout_method_id, -> { String }, optional: true, nullable: false

          field :destination_currency, -> { String }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
