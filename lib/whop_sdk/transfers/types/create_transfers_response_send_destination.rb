# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class CreateTransfersResponseSendDestination < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :address, -> { String }, optional: false, nullable: false
      end
    end
  end
end
