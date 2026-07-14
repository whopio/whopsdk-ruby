# typed: strong

module WhopSDK
  module Models
    class UserBalance < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::UserBalance, WhopSDK::Internal::AnyHash) }

      sig { returns(T::Array[WhopSDK::UserBalance::Business]) }
      attr_accessor :businesses

      # Combined USD balance across every account the user owns.
      sig { returns(String) }
      attr_accessor :businesses_total_usd

      sig { returns(T::Array[WhopSDK::UserBalance::Cash]) }
      attr_accessor :cash

      # Fiat cash in USD, including pending and reserve.
      sig { returns(String) }
      attr_accessor :cash_usd

      sig { returns(T::Array[WhopSDK::UserBalance::Crypto]) }
      attr_accessor :crypto

      # Crypto holdings in USD.
      sig { returns(String) }
      attr_accessor :crypto_usd

      # Pending funds in USD: fiat pending + in-flight treasury deposits.
      sig { returns(String) }
      attr_accessor :pending_usd

      # The user's personal balance in USD: cash (available + pending + reserve) +
      # crypto + in-flight treasury deposits. Excludes account balances (see
      # businesses_total_usd).
      sig { returns(String) }
      attr_accessor :total_usd

      # Balance-to-wallet USDT0 withdrawals still in flight, in USD.
      sig { returns(String) }
      attr_accessor :treasury_pending_usd

      sig do
        params(
          businesses: T::Array[WhopSDK::UserBalance::Business::OrHash],
          businesses_total_usd: String,
          cash: T::Array[WhopSDK::UserBalance::Cash::OrHash],
          cash_usd: String,
          crypto: T::Array[WhopSDK::UserBalance::Crypto::OrHash],
          crypto_usd: String,
          pending_usd: String,
          total_usd: String,
          treasury_pending_usd: String
        ).returns(T.attached_class)
      end
      def self.new(
        businesses:,
        # Combined USD balance across every account the user owns.
        businesses_total_usd:,
        cash:,
        # Fiat cash in USD, including pending and reserve.
        cash_usd:,
        crypto:,
        # Crypto holdings in USD.
        crypto_usd:,
        # Pending funds in USD: fiat pending + in-flight treasury deposits.
        pending_usd:,
        # The user's personal balance in USD: cash (available + pending + reserve) +
        # crypto + in-flight treasury deposits. Excludes account balances (see
        # businesses_total_usd).
        total_usd:,
        # Balance-to-wallet USDT0 withdrawals still in flight, in USD.
        treasury_pending_usd:
      )
      end

      sig do
        override.returns(
          {
            businesses: T::Array[WhopSDK::UserBalance::Business],
            businesses_total_usd: String,
            cash: T::Array[WhopSDK::UserBalance::Cash],
            cash_usd: String,
            crypto: T::Array[WhopSDK::UserBalance::Crypto],
            crypto_usd: String,
            pending_usd: String,
            total_usd: String,
            treasury_pending_usd: String
          }
        )
      end
      def to_hash
      end

      class Business < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::UserBalance::Business, WhopSDK::Internal::AnyHash)
          end

        # The account ID, which looks like biz\_******\*******.
        sig { returns(String) }
        attr_accessor :id

        # The account's total balance in USD.
        sig { returns(String) }
        attr_accessor :balance_usd

        # The account's logo URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :logo_url

        # The account's display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Account balances for accounts the user owns, highest balance first. Excludes
        # accounts with no balance.
        sig do
          params(
            id: String,
            balance_usd: String,
            logo_url: T.nilable(String),
            name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The account ID, which looks like biz\_******\*******.
          id:,
          # The account's total balance in USD.
          balance_usd:,
          # The account's logo URL.
          logo_url:,
          # The account's display name.
          name:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              balance_usd: String,
              logo_url: T.nilable(String),
              name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Cash < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::UserBalance::Cash, WhopSDK::Internal::AnyHash)
          end

        # Available balance in the native currency.
        sig { returns(Float) }
        attr_accessor :balance

        # Available balance converted to USD.
        sig { returns(Float) }
        attr_accessor :balance_usd

        # Lowercase ISO currency code, such as `usd` or `eur`.
        sig { returns(String) }
        attr_accessor :currency

        # Pending balance converted to USD.
        sig { returns(Float) }
        attr_accessor :pending_balance_usd

        # Reserved balance converted to USD.
        sig { returns(Float) }
        attr_accessor :reserve_balance_usd

        # Withdrawable amount in the native currency.
        sig { returns(Float) }
        attr_accessor :total_withdrawable_balance

        # Per-currency fiat cash balances.
        sig do
          params(
            balance: Float,
            balance_usd: Float,
            currency: String,
            pending_balance_usd: Float,
            reserve_balance_usd: Float,
            total_withdrawable_balance: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Available balance in the native currency.
          balance:,
          # Available balance converted to USD.
          balance_usd:,
          # Lowercase ISO currency code, such as `usd` or `eur`.
          currency:,
          # Pending balance converted to USD.
          pending_balance_usd:,
          # Reserved balance converted to USD.
          reserve_balance_usd:,
          # Withdrawable amount in the native currency.
          total_withdrawable_balance:
        )
        end

        sig do
          override.returns(
            {
              balance: Float,
              balance_usd: Float,
              currency: String,
              pending_balance_usd: Float,
              reserve_balance_usd: Float,
              total_withdrawable_balance: Float
            }
          )
        end
        def to_hash
        end
      end

      class Crypto < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::UserBalance::Crypto, WhopSDK::Internal::AnyHash)
          end

        # Amount held in native token units, as a decimal string.
        sig { returns(String) }
        attr_accessor :balance

        # Token icon URL.
        sig { returns(T.nilable(String)) }
        attr_accessor :icon_url

        # The token's display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # USD price per token, or `null` when unknown.
        sig { returns(T.nilable(Float)) }
        attr_accessor :price_usd

        # Token display symbol, such as `USDT`, `XAUT`, or `cbBTC`.
        sig { returns(String) }
        attr_accessor :symbol

        # Holding USD value.
        sig { returns(Float) }
        attr_accessor :value_usd

        # Per-token crypto holdings in the ledger's own wallet.
        sig do
          params(
            balance: String,
            icon_url: T.nilable(String),
            name: T.nilable(String),
            price_usd: T.nilable(Float),
            symbol: String,
            value_usd: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Amount held in native token units, as a decimal string.
          balance:,
          # Token icon URL.
          icon_url:,
          # The token's display name.
          name:,
          # USD price per token, or `null` when unknown.
          price_usd:,
          # Token display symbol, such as `USDT`, `XAUT`, or `cbBTC`.
          symbol:,
          # Holding USD value.
          value_usd:
        )
        end

        sig do
          override.returns(
            {
              balance: String,
              icon_url: T.nilable(String),
              name: T.nilable(String),
              price_usd: T.nilable(Float),
              symbol: String,
              value_usd: Float
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
