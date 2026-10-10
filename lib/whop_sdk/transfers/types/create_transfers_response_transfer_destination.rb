# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Business account or user receiving the transfer.
      class CreateTransfersResponseTransferDestination < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :logo_url, -> { String }, optional: false, nullable: true

        field :name, -> { String }, optional: false, nullable: true

        field :object, -> { Whop_sdk::Transfers::Types::CreateTransfersResponseTransferDestinationObject }, optional: false, nullable: false
      end
    end
  end
end
