# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#send_
    class WalletSendParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   USDT amount to send.
      #
      #   @return [String]
      required :amount, String

      # @!attribute to
      #   Recipient user ID, business account ID, ledger account ID, or email.
      #
      #   @return [String]
      required :to, String

      # @!method initialize(account_id:, amount:, to:, request_options: {})
      #   @param account_id [String]
      #
      #   @param amount [String] USDT amount to send.
      #
      #   @param to [String] Recipient user ID, business account ID, ledger account ID, or email.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
