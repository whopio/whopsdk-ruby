# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      class CreateDepositsRequest < Internal::Types::Model
        field :amount, -> { Integer }, optional: true, nullable: false

        field :destination, -> { Whop_sdk::Deposits::Types::CreateDepositsRequestDestination }, optional: false, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :network, -> { Whop_sdk::Deposits::Types::CreateDepositsRequestNetwork }, optional: true, nullable: false
      end
    end
  end
end
