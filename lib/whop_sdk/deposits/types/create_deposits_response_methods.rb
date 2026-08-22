# frozen_string_literal: true

module Whop_sdk
  module Deposits
    module Types
      # Available deposit methods for destination.
      class CreateDepositsResponseMethods < Internal::Types::Model
        field :bank, -> { Whop_sdk::Deposits::Types::CreateDepositsResponseMethodsBank }, optional: false, nullable: true

        field :crypto, -> { Internal::Types::Array[Whop_sdk::Deposits::Types::CreateDepositsResponseMethodsCryptoItem] }, optional: false, nullable: false
      end
    end
  end
end
