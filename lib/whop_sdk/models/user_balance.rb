# frozen_string_literal: true

module WhopSDK
  module Models
    class UserBalance < WhopSDK::Internal::Type::BaseModel
      # @!attribute businesses
      #
      #   @return [Array<WhopSDK::Models::UserBalance::Business>]
      required :businesses, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::UserBalance::Business] }

      # @!attribute businesses_total_usd
      #   Combined USD balance across every account the user owns.
      #
      #   @return [String]
      required :businesses_total_usd, String

      # @!attribute cash
      #
      #   @return [Array<WhopSDK::Models::UserBalance::Cash>]
      required :cash, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::UserBalance::Cash] }

      # @!attribute cash_usd
      #   Fiat cash in USD, including pending and reserve.
      #
      #   @return [String]
      required :cash_usd, String

      # @!attribute crypto
      #
      #   @return [Array<WhopSDK::Models::UserBalance::Crypto>]
      required :crypto, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::UserBalance::Crypto] }

      # @!attribute crypto_usd
      #   Crypto holdings in USD.
      #
      #   @return [String]
      required :crypto_usd, String

      # @!attribute pending_usd
      #   Pending funds in USD: fiat pending + in-flight treasury deposits.
      #
      #   @return [String]
      required :pending_usd, String

      # @!attribute total_usd
      #   The user's personal balance in USD: cash (available + pending + reserve) +
      #   crypto + in-flight treasury deposits. Excludes account balances (see
      #   businesses_total_usd).
      #
      #   @return [String]
      required :total_usd, String

      # @!attribute treasury_pending_usd
      #   Balance-to-wallet USDT0 withdrawals still in flight, in USD.
      #
      #   @return [String]
      required :treasury_pending_usd, String

      # @!method initialize(businesses:, businesses_total_usd:, cash:, cash_usd:, crypto:, crypto_usd:, pending_usd:, total_usd:, treasury_pending_usd:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::UserBalance} for more details.
      #
      #   @param businesses [Array<WhopSDK::Models::UserBalance::Business>]
      #
      #   @param businesses_total_usd [String] Combined USD balance across every account the user owns.
      #
      #   @param cash [Array<WhopSDK::Models::UserBalance::Cash>]
      #
      #   @param cash_usd [String] Fiat cash in USD, including pending and reserve.
      #
      #   @param crypto [Array<WhopSDK::Models::UserBalance::Crypto>]
      #
      #   @param crypto_usd [String] Crypto holdings in USD.
      #
      #   @param pending_usd [String] Pending funds in USD: fiat pending + in-flight treasury deposits.
      #
      #   @param total_usd [String] The user's personal balance in USD: cash (available + pending + reserve) + crypt
      #
      #   @param treasury_pending_usd [String] Balance-to-wallet USDT0 withdrawals still in flight, in USD.

      class Business < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The account ID, which looks like biz\_******\*******.
        #
        #   @return [String]
        required :id, String

        # @!attribute balance_usd
        #   The account's total balance in USD.
        #
        #   @return [String]
        required :balance_usd, String

        # @!attribute logo_url
        #   The account's logo URL.
        #
        #   @return [String, nil]
        required :logo_url, String, nil?: true

        # @!attribute name
        #   The account's display name.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!method initialize(id:, balance_usd:, logo_url:, name:)
        #   Account balances for accounts the user owns, highest balance first. Excludes
        #   accounts with no balance.
        #
        #   @param id [String] The account ID, which looks like biz\_******\*******.
        #
        #   @param balance_usd [String] The account's total balance in USD.
        #
        #   @param logo_url [String, nil] The account's logo URL.
        #
        #   @param name [String, nil] The account's display name.
      end

      class Cash < WhopSDK::Internal::Type::BaseModel
        # @!attribute balance
        #   Available balance in the native currency.
        #
        #   @return [Float]
        required :balance, Float

        # @!attribute balance_usd
        #   Available balance converted to USD.
        #
        #   @return [Float]
        required :balance_usd, Float

        # @!attribute currency
        #   Lowercase ISO currency code, such as `usd` or `eur`.
        #
        #   @return [String]
        required :currency, String

        # @!attribute pending_balance_usd
        #   Pending balance converted to USD.
        #
        #   @return [Float]
        required :pending_balance_usd, Float

        # @!attribute reserve_balance_usd
        #   Reserved balance converted to USD.
        #
        #   @return [Float]
        required :reserve_balance_usd, Float

        # @!attribute total_withdrawable_balance
        #   Withdrawable amount in the native currency.
        #
        #   @return [Float]
        required :total_withdrawable_balance, Float

        # @!method initialize(balance:, balance_usd:, currency:, pending_balance_usd:, reserve_balance_usd:, total_withdrawable_balance:)
        #   Per-currency fiat cash balances.
        #
        #   @param balance [Float] Available balance in the native currency.
        #
        #   @param balance_usd [Float] Available balance converted to USD.
        #
        #   @param currency [String] Lowercase ISO currency code, such as `usd` or `eur`.
        #
        #   @param pending_balance_usd [Float] Pending balance converted to USD.
        #
        #   @param reserve_balance_usd [Float] Reserved balance converted to USD.
        #
        #   @param total_withdrawable_balance [Float] Withdrawable amount in the native currency.
      end

      class Crypto < WhopSDK::Internal::Type::BaseModel
        # @!attribute balance
        #   Amount held in native token units, as a decimal string.
        #
        #   @return [String]
        required :balance, String

        # @!attribute icon_url
        #   Token icon URL.
        #
        #   @return [String, nil]
        required :icon_url, String, nil?: true

        # @!attribute name
        #   The token's display name.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute price_usd
        #   USD price per token, or `null` when unknown.
        #
        #   @return [Float, nil]
        required :price_usd, Float, nil?: true

        # @!attribute symbol
        #   Token display symbol, such as `USDT`, `XAUT`, or `cbBTC`.
        #
        #   @return [String]
        required :symbol, String

        # @!attribute value_usd
        #   Holding USD value.
        #
        #   @return [Float]
        required :value_usd, Float

        # @!method initialize(balance:, icon_url:, name:, price_usd:, symbol:, value_usd:)
        #   Per-token crypto holdings in the ledger's own wallet.
        #
        #   @param balance [String] Amount held in native token units, as a decimal string.
        #
        #   @param icon_url [String, nil] Token icon URL.
        #
        #   @param name [String, nil] The token's display name.
        #
        #   @param price_usd [Float, nil] USD price per token, or `null` when unknown.
        #
        #   @param symbol [String] Token display symbol, such as `USDT`, `XAUT`, or `cbBTC`.
        #
        #   @param value_usd [Float] Holding USD value.
      end
    end
  end
end
