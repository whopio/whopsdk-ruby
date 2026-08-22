# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      class CreateDepositsResponse < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: true

        field :amount, -> { String }, optional: true, nullable: false

        field :hosted_url, -> { String }, optional: false, nullable: true

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :methods, -> { Whop_sdk::Deposits::Types::CreateDepositsResponseMethods }, optional: false, nullable: false

        field :object, -> { Whop_sdk::Deposits::Types::CreateDepositsResponseObject }, optional: false, nullable: false
      end
    end
  end
end
