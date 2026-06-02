# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#ping
    class WalletPingResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, WhopSDK::Models::WalletPingResponse::Status]
      required :status, enum: -> { WhopSDK::Models::WalletPingResponse::Status }

      # @!method initialize(status:)
      #   @param status [Symbol, WhopSDK::Models::WalletPingResponse::Status]

      # @see WhopSDK::Models::WalletPingResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        OK = :ok

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
