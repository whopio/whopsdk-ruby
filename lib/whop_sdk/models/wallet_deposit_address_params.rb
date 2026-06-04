# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#deposit_address
    class WalletDepositAddressParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute asset
      #   Optional asset symbol the caller intends to deposit (e.g. USDT). Unsupported
      #   assets are rejected with a 400 rather than silently ignored.
      #
      #   @return [String, nil]
      optional :asset, String

      # @!attribute network
      #   Optional network the caller intends to deposit on (e.g. plasma). Unsupported
      #   networks are rejected with a 400 rather than silently ignored.
      #
      #   @return [Symbol, WhopSDK::Models::WalletDepositAddressParams::Network, nil]
      optional :network, enum: -> { WhopSDK::WalletDepositAddressParams::Network }

      # @!method initialize(account_id:, asset: nil, network: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::WalletDepositAddressParams} for more details.
      #
      #   @param account_id [String]
      #
      #   @param asset [String] Optional asset symbol the caller intends to deposit (e.g. USDT). Unsupported ass
      #
      #   @param network [Symbol, WhopSDK::Models::WalletDepositAddressParams::Network] Optional network the caller intends to deposit on (e.g. plasma). Unsupported net
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Optional network the caller intends to deposit on (e.g. plasma). Unsupported
      # networks are rejected with a 400 rather than silently ignored.
      module Network
        extend WhopSDK::Internal::Type::Enum

        PLASMA = :plasma
        BASE = :base
        ETHEREUM = :ethereum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
