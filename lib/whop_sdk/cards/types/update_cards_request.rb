# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      class UpdateCardsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :billing, -> { Whop_sdk::Cards::Types::UpdateCardsRequestBilling }, optional: true, nullable: false

        field :canceled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :frozen, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :pin, -> { String }, optional: true, nullable: false

        field :remove_limit, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :spend_limit, -> { Integer }, optional: true, nullable: false

        field :spend_limit_frequency, -> { Whop_sdk::Cards::Types::UpdateCardsRequestSpendLimitFrequency }, optional: true, nullable: false

        field :transaction_limit, -> { Integer }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
