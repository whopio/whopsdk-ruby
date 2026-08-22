# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        class CreateMethodsRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: true, nullable: false

          field :destination_currency, -> { String }, optional: true, nullable: false

          field :fields, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

          field :is_default, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :nickname, -> { String }, optional: true, nullable: false

          field :supported_payout_method_id, -> { String }, optional: false, nullable: false

          field :user_id, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
