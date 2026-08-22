# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      # Returned for a wallet_send: an onchain USDT send to a recipient.
      class CreateTransfersResponseSend < Internal::Types::Model
        field :amount, -> { String }, optional: false, nullable: false

        field :currency, -> { String }, optional: false, nullable: false

        field :destination, -> { Whop_sdk::Transfers::Types::CreateTransfersResponseSendDestination }, optional: false, nullable: false

        field :source, -> { Whop_sdk::Transfers::Types::CreateTransfersResponseSendSource }, optional: false, nullable: false

        field :tx_hash, -> { String }, optional: false, nullable: false
      end
    end
  end
end
