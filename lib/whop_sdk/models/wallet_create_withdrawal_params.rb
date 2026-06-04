# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Wallets#create_withdrawal
    class WalletCreateWithdrawalParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #
      #   @return [String]
      required :account_id, String

      # @!attribute amount
      #   Amount to withdraw, as a decimal string in the given asset (e.g. "100.00").
      #
      #   @return [String]
      required :amount, String

      # @!attribute payout_method_id
      #   A payout method already linked to the account.
      #
      #   @return [String]
      required :payout_method_id, String

      # @!attribute asset
      #   Currency to withdraw. Defaults to usd.
      #
      #   @return [String, nil]
      optional :asset, String

      # @!method initialize(account_id:, amount:, payout_method_id:, asset: nil, request_options: {})
      #   @param account_id [String]
      #
      #   @param amount [String] Amount to withdraw, as a decimal string in the given asset (e.g. "100.00").
      #
      #   @param payout_method_id [String] A payout method already linked to the account.
      #
      #   @param asset [String] Currency to withdraw. Defaults to usd.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
