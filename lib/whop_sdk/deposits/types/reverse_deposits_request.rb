# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      class ReverseDepositsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Whop_sdk::Deposits::Types::ReverseDepositsRequestMetadataValue] }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
