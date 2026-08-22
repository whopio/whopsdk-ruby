# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      class CreateCardsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :assigned_user_id, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :spend_limit, -> { Integer }, optional: true, nullable: false

        field :spend_limit_frequency, -> { Whop_sdk::Cards::Types::CreateCardsRequestSpendLimitFrequency }, optional: true, nullable: false

        field :transaction_limit, -> { Integer }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
