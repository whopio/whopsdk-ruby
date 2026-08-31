# typed: strong

module WhopSDK
  module Models
    class User < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::User, WhopSDK::Internal::AnyHash) }

      # User ID, prefixed `user_`.
      sig { returns(String) }
      attr_accessor :id

      # The user's balance: personal cash + crypto + in-flight treasury deposits, plus
      # account balances for accounts they own. Computed only on the self view
      # (retrieved with the reserved id `me`) for callers with balance-read scope;
      # `null` otherwise.
      sig { returns(T.nilable(WhopSDK::User::Balance)) }
      attr_reader :balance

      sig { params(balance: T.nilable(WhopSDK::User::Balance::OrHash)).void }
      attr_writer :balance

      # The user's cumulative wallet balance over time (USD `{ t, v }` points plus
      # last/min/max), for the balance chart. Opt in with `include_balance_history=true`
      # when retrieving yourself with the reserved id `me`; populated only for callers
      # with balance-read scope and `null` otherwise. A user with no wallet activity
      # returns an empty series.
      sig { returns(T.nilable(WhopSDK::User::BalanceHistory)) }
      attr_reader :balance_history

      sig do
        params(
          balance_history: T.nilable(WhopSDK::User::BalanceHistory::OrHash)
        ).void
      end
      attr_writer :balance_history

      # The user's profile banner wrapper. `null` when the user has no banner.
      sig { returns(T.nilable(WhopSDK::User::Banner)) }
      attr_reader :banner

      sig { params(banner: T.nilable(WhopSDK::User::Banner::OrHash)).void }
      attr_writer :banner

      # The user's biography
      sig { returns(T.nilable(String)) }
      attr_accessor :bio

      # When the user was created, as an ISO 8601 timestamp
      sig { returns(String) }
      attr_accessor :created_at

      # The user's gross USD income over time, including a Partner commission breakdown.
      # Populated only on single-user self reads for callers with balance-read scope;
      # `null` otherwise.
      sig { returns(T.nilable(WhopSDK::User::EarningsUsd)) }
      attr_reader :earnings_usd

      sig do
        params(earnings_usd: T.nilable(WhopSDK::User::EarningsUsd::OrHash)).void
      end
      attr_writer :earnings_usd

      # The user's email address. Populated only on the self view (retrieved with the
      # reserved id `me`) for callers with email-read scope; `null` otherwise, or while
      # the account has no confirmed email yet.
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # The user's display name
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Avatar wrapper; its `url` is always present, using a generated placeholder when
      # the user set no picture.
      sig { returns(WhopSDK::User::ProfilePicture) }
      attr_reader :profile_picture

      sig do
        params(profile_picture: WhopSDK::User::ProfilePicture::OrHash).void
      end
      attr_writer :profile_picture

      sig { returns(T::Array[WhopSDK::User::SocialAccount]) }
      attr_accessor :social_accounts

      # Whop staff access flags. Populated only on the self view (retrieved with the
      # reserved id `me`) for callers with staff-read scope; `null` there for every user
      # who is not Whop staff, and always `null` elsewhere.
      sig { returns(T.nilable(WhopSDK::User::Staff)) }
      attr_reader :staff

      sig { params(staff: T.nilable(WhopSDK::User::Staff::OrHash)).void }
      attr_writer :staff

      # The user's unique username
      sig { returns(String) }
      attr_accessor :username

      # Identity verification status for the user's `individual` (KYC) and `business`
      # (KYB) profiles. Each is `null` until created, otherwise a `status` of
      # `not_started`, `pending`, `approved`, or `rejected`.
      sig { returns(T.anything) }
      attr_accessor :verification

      # When the user became an enrolled Whop Partner, as an ISO 8601 timestamp. `null`
      # if never enrolled.
      sig { returns(T.nilable(String)) }
      attr_accessor :whop_partner_enabled_at

      sig do
        params(
          id: String,
          balance: T.nilable(WhopSDK::User::Balance::OrHash),
          balance_history: T.nilable(WhopSDK::User::BalanceHistory::OrHash),
          banner: T.nilable(WhopSDK::User::Banner::OrHash),
          bio: T.nilable(String),
          created_at: String,
          earnings_usd: T.nilable(WhopSDK::User::EarningsUsd::OrHash),
          email: T.nilable(String),
          name: T.nilable(String),
          profile_picture: WhopSDK::User::ProfilePicture::OrHash,
          social_accounts: T::Array[WhopSDK::User::SocialAccount::OrHash],
          staff: T.nilable(WhopSDK::User::Staff::OrHash),
          username: String,
          verification: T.anything,
          whop_partner_enabled_at: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # User ID, prefixed `user_`.
        id:,
        # The user's balance: personal cash + crypto + in-flight treasury deposits, plus
        # account balances for accounts they own. Computed only on the self view
        # (retrieved with the reserved id `me`) for callers with balance-read scope;
        # `null` otherwise.
        balance:,
        # The user's cumulative wallet balance over time (USD `{ t, v }` points plus
        # last/min/max), for the balance chart. Opt in with `include_balance_history=true`
        # when retrieving yourself with the reserved id `me`; populated only for callers
        # with balance-read scope and `null` otherwise. A user with no wallet activity
        # returns an empty series.
        balance_history:,
        # The user's profile banner wrapper. `null` when the user has no banner.
        banner:,
        # The user's biography
        bio:,
        # When the user was created, as an ISO 8601 timestamp
        created_at:,
        # The user's gross USD income over time, including a Partner commission breakdown.
        # Populated only on single-user self reads for callers with balance-read scope;
        # `null` otherwise.
        earnings_usd:,
        # The user's email address. Populated only on the self view (retrieved with the
        # reserved id `me`) for callers with email-read scope; `null` otherwise, or while
        # the account has no confirmed email yet.
        email:,
        # The user's display name
        name:,
        # Avatar wrapper; its `url` is always present, using a generated placeholder when
        # the user set no picture.
        profile_picture:,
        social_accounts:,
        # Whop staff access flags. Populated only on the self view (retrieved with the
        # reserved id `me`) for callers with staff-read scope; `null` there for every user
        # who is not Whop staff, and always `null` elsewhere.
        staff:,
        # The user's unique username
        username:,
        # Identity verification status for the user's `individual` (KYC) and `business`
        # (KYB) profiles. Each is `null` until created, otherwise a `status` of
        # `not_started`, `pending`, `approved`, or `rejected`.
        verification:,
        # When the user became an enrolled Whop Partner, as an ISO 8601 timestamp. `null`
        # if never enrolled.
        whop_partner_enabled_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            balance: T.nilable(WhopSDK::User::Balance),
            balance_history: T.nilable(WhopSDK::User::BalanceHistory),
            banner: T.nilable(WhopSDK::User::Banner),
            bio: T.nilable(String),
            created_at: String,
            earnings_usd: T.nilable(WhopSDK::User::EarningsUsd),
            email: T.nilable(String),
            name: T.nilable(String),
            profile_picture: WhopSDK::User::ProfilePicture,
            social_accounts: T::Array[WhopSDK::User::SocialAccount],
            staff: T.nilable(WhopSDK::User::Staff),
            username: String,
            verification: T.anything,
            whop_partner_enabled_at: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Balance < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::User::Balance, WhopSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[WhopSDK::User::Balance::Business]) }
        attr_accessor :businesses

        # Combined USD balance across every account the user owns.
        sig { returns(String) }
        attr_accessor :businesses_total_usd

        sig { returns(T::Array[WhopSDK::User::Balance::Cash]) }
        attr_accessor :cash

        # Fiat cash in USD, including pending, in-transit, and reserve.
        sig { returns(String) }
        attr_accessor :cash_usd

        sig { returns(T::Array[WhopSDK::User::Balance::Crypto]) }
        attr_accessor :crypto

        # Crypto holdings in USD.
        sig { returns(String) }
        attr_accessor :crypto_usd

        # Fiat pending and in-transit balances, plus in-flight treasury deposits, in USD.
        sig { returns(String) }
        attr_accessor :pending_usd

        # The user's personal balance in USD: cash (available + pending + in-transit +
        # reserve) + crypto + in-flight treasury deposits. Excludes account balances (see
        # businesses_total_usd).
        sig { returns(String) }
        attr_accessor :total_usd

        # Balance-to-wallet USDT0 payouts still in flight, in USD.
        sig { returns(String) }
        attr_accessor :treasury_pending_usd

        # The user's balance: personal cash + crypto + in-flight treasury deposits, plus
        # account balances for accounts they own. Computed only on the self view
        # (retrieved with the reserved id `me`) for callers with balance-read scope;
        # `null` otherwise.
        sig do
          params(
            businesses: T::Array[WhopSDK::User::Balance::Business::OrHash],
            businesses_total_usd: String,
            cash: T::Array[WhopSDK::User::Balance::Cash::OrHash],
            cash_usd: String,
            crypto: T::Array[WhopSDK::User::Balance::Crypto::OrHash],
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
          # Fiat cash in USD, including pending, in-transit, and reserve.
          cash_usd:,
          crypto:,
          # Crypto holdings in USD.
          crypto_usd:,
          # Fiat pending and in-transit balances, plus in-flight treasury deposits, in USD.
          pending_usd:,
          # The user's personal balance in USD: cash (available + pending + in-transit +
          # reserve) + crypto + in-flight treasury deposits. Excludes account balances (see
          # businesses_total_usd).
          total_usd:,
          # Balance-to-wallet USDT0 payouts still in flight, in USD.
          treasury_pending_usd:
        )
        end

        sig do
          override.returns(
            {
              businesses: T::Array[WhopSDK::User::Balance::Business],
              businesses_total_usd: String,
              cash: T::Array[WhopSDK::User::Balance::Cash],
              cash_usd: String,
              crypto: T::Array[WhopSDK::User::Balance::Crypto],
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
              T.any(
                WhopSDK::User::Balance::Business,
                WhopSDK::Internal::AnyHash
              )
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
              T.any(WhopSDK::User::Balance::Cash, WhopSDK::Internal::AnyHash)
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

          # Balance moving to the user's own wallet or card, converted to USD.
          sig { returns(Float) }
          attr_accessor :in_transit_balance_usd

          # Pending balance converted to USD.
          sig { returns(Float) }
          attr_accessor :pending_balance_usd

          # USD price per native currency unit, or `null` when no exchange rate is
          # available.
          sig { returns(T.nilable(Float)) }
          attr_accessor :price_usd

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
              in_transit_balance_usd: Float,
              pending_balance_usd: Float,
              price_usd: T.nilable(Float),
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
            # Balance moving to the user's own wallet or card, converted to USD.
            in_transit_balance_usd:,
            # Pending balance converted to USD.
            pending_balance_usd:,
            # USD price per native currency unit, or `null` when no exchange rate is
            # available.
            price_usd:,
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
                in_transit_balance_usd: Float,
                pending_balance_usd: Float,
                price_usd: T.nilable(Float),
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
              T.any(WhopSDK::User::Balance::Crypto, WhopSDK::Internal::AnyHash)
            end

          # Amount held in native token units, as a decimal string.
          sig { returns(String) }
          attr_accessor :balance

          # Balance split into available, pending, in-transit, and reserve amounts, as
          # native-unit decimal strings. Transfers between the user's own wallet and card
          # are reported in `in_transit` until they arrive.
          sig { returns(WhopSDK::User::Balance::Crypto::Breakdown) }
          attr_reader :breakdown

          sig do
            params(
              breakdown: WhopSDK::User::Balance::Crypto::Breakdown::OrHash
            ).void
          end
          attr_writer :breakdown

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
              breakdown: WhopSDK::User::Balance::Crypto::Breakdown::OrHash,
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
            # Balance split into available, pending, in-transit, and reserve amounts, as
            # native-unit decimal strings. Transfers between the user's own wallet and card
            # are reported in `in_transit` until they arrive.
            breakdown:,
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
                breakdown: WhopSDK::User::Balance::Crypto::Breakdown,
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

          class Breakdown < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::User::Balance::Crypto::Breakdown,
                  WhopSDK::Internal::AnyHash
                )
              end

            # Amount you can spend, send, or withdraw now, in native units, as a decimal
            # string.
            sig { returns(String) }
            attr_accessor :available

            # Amount moving between the account's own destinations, such as a treasury sweep
            # to its crypto wallet or a card top-up. In native units, as a decimal string.
            sig { returns(String) }
            attr_accessor :in_transit

            # Amount from recent payments still settling, in native units, as a decimal
            # string.
            sig { returns(String) }
            attr_accessor :pending

            sig do
              returns(
                T::Array[
                  WhopSDK::User::Balance::Crypto::Breakdown::PendingSettlement
                ]
              )
            end
            attr_accessor :pending_settlements

            # Amount held back, in native units, as a decimal string. Retrieve the account's
            # reserves for why it is held and when it unlocks.
            sig { returns(String) }
            attr_accessor :reserve

            # Balance split into available, pending, in-transit, and reserve amounts, as
            # native-unit decimal strings. Transfers between the user's own wallet and card
            # are reported in `in_transit` until they arrive.
            sig do
              params(
                available: String,
                in_transit: String,
                pending: String,
                pending_settlements:
                  T::Array[
                    WhopSDK::User::Balance::Crypto::Breakdown::PendingSettlement::OrHash
                  ],
                reserve: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Amount you can spend, send, or withdraw now, in native units, as a decimal
              # string.
              available:,
              # Amount moving between the account's own destinations, such as a treasury sweep
              # to its crypto wallet or a card top-up. In native units, as a decimal string.
              in_transit:,
              # Amount from recent payments still settling, in native units, as a decimal
              # string.
              pending:,
              pending_settlements:,
              # Amount held back, in native units, as a decimal string. Retrieve the account's
              # reserves for why it is held and when it unlocks.
              reserve:
            )
            end

            sig do
              override.returns(
                {
                  available: String,
                  in_transit: String,
                  pending: String,
                  pending_settlements:
                    T::Array[
                      WhopSDK::User::Balance::Crypto::Breakdown::PendingSettlement
                    ],
                  reserve: String
                }
              )
            end
            def to_hash
            end

            class PendingSettlement < WhopSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    WhopSDK::User::Balance::Crypto::Breakdown::PendingSettlement,
                    WhopSDK::Internal::AnyHash
                  )
                end

              # Amount expected that day, in native units, as a decimal string.
              sig { returns(String) }
              attr_accessor :amount

              # The day this money is expected to finish settling, as an ISO 8601 date.
              sig { returns(String) }
              attr_accessor :date

              # When the pending amount is expected to settle, one entry per day, earliest
              # first. Money with no scheduled settlement day, such as a transfer in flight, is
              # left out — so these can sum to less than `pending`, never more.
              sig do
                params(amount: String, date: String).returns(T.attached_class)
              end
              def self.new(
                # Amount expected that day, in native units, as a decimal string.
                amount:,
                # The day this money is expected to finish settling, as an ISO 8601 date.
                date:
              )
              end

              sig { override.returns({ amount: String, date: String }) }
              def to_hash
              end
            end
          end
        end
      end

      class BalanceHistory < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::User::BalanceHistory, WhopSDK::Internal::AnyHash)
          end

        sig { returns(T::Array[WhopSDK::User::BalanceHistory::Data]) }
        attr_accessor :data

        # Value of the most recent point, in USD.
        sig { returns(Float) }
        attr_accessor :last

        # Maximum value across the window, in USD.
        sig { returns(Float) }
        attr_accessor :max

        # Minimum value across the window, in USD.
        sig { returns(Float) }
        attr_accessor :min

        # The user's cumulative wallet balance over time (USD `{ t, v }` points plus
        # last/min/max), for the balance chart. Opt in with `include_balance_history=true`
        # when retrieving yourself with the reserved id `me`; populated only for callers
        # with balance-read scope and `null` otherwise. A user with no wallet activity
        # returns an empty series.
        sig do
          params(
            data: T::Array[WhopSDK::User::BalanceHistory::Data::OrHash],
            last: Float,
            max: Float,
            min: Float
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          # Value of the most recent point, in USD.
          last:,
          # Maximum value across the window, in USD.
          max:,
          # Minimum value across the window, in USD.
          min:
        )
        end

        sig do
          override.returns(
            {
              data: T::Array[WhopSDK::User::BalanceHistory::Data],
              last: Float,
              max: Float,
              min: Float
            }
          )
        end
        def to_hash
        end

        class Data < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::User::BalanceHistory::Data,
                WhopSDK::Internal::AnyHash
              )
            end

          # Point timestamp, in Unix seconds.
          sig { returns(Integer) }
          attr_accessor :t

          # Cumulative wallet balance at this point, in USD.
          sig { returns(Float) }
          attr_accessor :v

          # Cumulative balance points over the requested window, oldest first.
          sig { params(t: Integer, v: Float).returns(T.attached_class) }
          def self.new(
            # Point timestamp, in Unix seconds.
            t:,
            # Cumulative wallet balance at this point, in USD.
            v:
          )
          end

          sig { override.returns({ t: Integer, v: Float }) }
          def to_hash
          end
        end
      end

      class Banner < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::User::Banner, WhopSDK::Internal::AnyHash)
          end

        # Profile banner image URL.
        sig { returns(String) }
        attr_accessor :url

        # The user's profile banner wrapper. `null` when the user has no banner.
        sig { params(url: String).returns(T.attached_class) }
        def self.new(
          # Profile banner image URL.
          url:
        )
        end

        sig { override.returns({ url: String }) }
        def to_hash
        end
      end

      class EarningsUsd < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::User::EarningsUsd, WhopSDK::Internal::AnyHash)
          end

        # The first time the user earned gross income, as an ISO 8601 timestamp.
        sig { returns(T.nilable(String)) }
        attr_accessor :first_earned_at

        # Gross income from accounts the user owns or is owner-authorized on.
        sig { returns(WhopSDK::User::EarningsUsd::OwnedAccounts) }
        attr_reader :owned_accounts

        sig do
          params(
            owned_accounts: WhopSDK::User::EarningsUsd::OwnedAccounts::OrHash
          ).void
        end
        attr_writer :owned_accounts

        # Partner commissions posted to the user's wallet. Pending Partner payouts are
        # excluded until they post; later reversals do not reduce gross income.
        sig { returns(WhopSDK::User::EarningsUsd::Partners) }
        attr_reader :partners

        sig do
          params(partners: WhopSDK::User::EarningsUsd::Partners::OrHash).void
        end
        attr_writer :partners

        # Gross income from the user's personal wallet.
        sig { returns(WhopSDK::User::EarningsUsd::Personal) }
        attr_reader :personal

        sig do
          params(personal: WhopSDK::User::EarningsUsd::Personal::OrHash).void
        end
        attr_writer :personal

        # Gross income from the user's personal wallet plus accounts they own or are
        # owner-authorized on.
        sig { returns(WhopSDK::User::EarningsUsd::Total) }
        attr_reader :total

        sig { params(total: WhopSDK::User::EarningsUsd::Total::OrHash).void }
        attr_writer :total

        # The user's gross USD income over time, including a Partner commission breakdown.
        # Populated only on single-user self reads for callers with balance-read scope;
        # `null` otherwise.
        sig do
          params(
            first_earned_at: T.nilable(String),
            owned_accounts: WhopSDK::User::EarningsUsd::OwnedAccounts::OrHash,
            partners: WhopSDK::User::EarningsUsd::Partners::OrHash,
            personal: WhopSDK::User::EarningsUsd::Personal::OrHash,
            total: WhopSDK::User::EarningsUsd::Total::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The first time the user earned gross income, as an ISO 8601 timestamp.
          first_earned_at:,
          # Gross income from accounts the user owns or is owner-authorized on.
          owned_accounts:,
          # Partner commissions posted to the user's wallet. Pending Partner payouts are
          # excluded until they post; later reversals do not reduce gross income.
          partners:,
          # Gross income from the user's personal wallet.
          personal:,
          # Gross income from the user's personal wallet plus accounts they own or are
          # owner-authorized on.
          total:
        )
        end

        sig do
          override.returns(
            {
              first_earned_at: T.nilable(String),
              owned_accounts: WhopSDK::User::EarningsUsd::OwnedAccounts,
              partners: WhopSDK::User::EarningsUsd::Partners,
              personal: WhopSDK::User::EarningsUsd::Personal,
              total: WhopSDK::User::EarningsUsd::Total
            }
          )
        end
        def to_hash
        end

        class OwnedAccounts < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::User::EarningsUsd::OwnedAccounts,
                WhopSDK::Internal::AnyHash
              )
            end

          # Gross income in USD over the last 24 hours.
          sig { returns(String) }
          attr_accessor :last_24_hours

          # Gross income in USD over the last 30 days.
          sig { returns(String) }
          attr_accessor :last_30_days

          # Gross income in USD over the last 7 days.
          sig { returns(String) }
          attr_accessor :last_7_days

          # All-time gross income in USD.
          sig { returns(String) }
          attr_accessor :lifetime

          # Gross income from accounts the user owns or is owner-authorized on.
          sig do
            params(
              last_24_hours: String,
              last_30_days: String,
              last_7_days: String,
              lifetime: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Gross income in USD over the last 24 hours.
            last_24_hours:,
            # Gross income in USD over the last 30 days.
            last_30_days:,
            # Gross income in USD over the last 7 days.
            last_7_days:,
            # All-time gross income in USD.
            lifetime:
          )
          end

          sig do
            override.returns(
              {
                last_24_hours: String,
                last_30_days: String,
                last_7_days: String,
                lifetime: String
              }
            )
          end
          def to_hash
          end
        end

        class Partners < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::User::EarningsUsd::Partners,
                WhopSDK::Internal::AnyHash
              )
            end

          # Gross income in USD over the last 24 hours.
          sig { returns(String) }
          attr_accessor :last_24_hours

          # Gross income in USD over the last 30 days.
          sig { returns(String) }
          attr_accessor :last_30_days

          # Gross income in USD over the last 7 days.
          sig { returns(String) }
          attr_accessor :last_7_days

          # All-time gross income in USD.
          sig { returns(String) }
          attr_accessor :lifetime

          # Partner commissions posted to the user's wallet. Pending Partner payouts are
          # excluded until they post; later reversals do not reduce gross income.
          sig do
            params(
              last_24_hours: String,
              last_30_days: String,
              last_7_days: String,
              lifetime: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Gross income in USD over the last 24 hours.
            last_24_hours:,
            # Gross income in USD over the last 30 days.
            last_30_days:,
            # Gross income in USD over the last 7 days.
            last_7_days:,
            # All-time gross income in USD.
            lifetime:
          )
          end

          sig do
            override.returns(
              {
                last_24_hours: String,
                last_30_days: String,
                last_7_days: String,
                lifetime: String
              }
            )
          end
          def to_hash
          end
        end

        class Personal < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::User::EarningsUsd::Personal,
                WhopSDK::Internal::AnyHash
              )
            end

          # Gross income in USD over the last 24 hours.
          sig { returns(String) }
          attr_accessor :last_24_hours

          # Gross income in USD over the last 30 days.
          sig { returns(String) }
          attr_accessor :last_30_days

          # Gross income in USD over the last 7 days.
          sig { returns(String) }
          attr_accessor :last_7_days

          # All-time gross income in USD.
          sig { returns(String) }
          attr_accessor :lifetime

          # Gross income from the user's personal wallet.
          sig do
            params(
              last_24_hours: String,
              last_30_days: String,
              last_7_days: String,
              lifetime: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Gross income in USD over the last 24 hours.
            last_24_hours:,
            # Gross income in USD over the last 30 days.
            last_30_days:,
            # Gross income in USD over the last 7 days.
            last_7_days:,
            # All-time gross income in USD.
            lifetime:
          )
          end

          sig do
            override.returns(
              {
                last_24_hours: String,
                last_30_days: String,
                last_7_days: String,
                lifetime: String
              }
            )
          end
          def to_hash
          end
        end

        class Total < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::User::EarningsUsd::Total,
                WhopSDK::Internal::AnyHash
              )
            end

          # Gross income in USD over the last 24 hours.
          sig { returns(String) }
          attr_accessor :last_24_hours

          # Gross income in USD over the last 30 days.
          sig { returns(String) }
          attr_accessor :last_30_days

          # Gross income in USD over the last 7 days.
          sig { returns(String) }
          attr_accessor :last_7_days

          # All-time gross income in USD.
          sig { returns(String) }
          attr_accessor :lifetime

          # Gross income from the user's personal wallet plus accounts they own or are
          # owner-authorized on.
          sig do
            params(
              last_24_hours: String,
              last_30_days: String,
              last_7_days: String,
              lifetime: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Gross income in USD over the last 24 hours.
            last_24_hours:,
            # Gross income in USD over the last 30 days.
            last_30_days:,
            # Gross income in USD over the last 7 days.
            last_7_days:,
            # All-time gross income in USD.
            lifetime:
          )
          end

          sig do
            override.returns(
              {
                last_24_hours: String,
                last_30_days: String,
                last_7_days: String,
                lifetime: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class ProfilePicture < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::User::ProfilePicture, WhopSDK::Internal::AnyHash)
          end

        # Avatar image URL. Always present — a generated placeholder when the user set no
        # picture.
        sig { returns(String) }
        attr_accessor :url

        # Avatar wrapper; its `url` is always present, using a generated placeholder when
        # the user set no picture.
        sig { params(url: String).returns(T.attached_class) }
        def self.new(
          # Avatar image URL. Always present — a generated placeholder when the user set no
          # picture.
          url:
        )
        end

        sig { override.returns({ url: String }) }
        def to_hash
        end
      end

      class SocialAccount < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::User::SocialAccount, WhopSDK::Internal::AnyHash)
          end

        # Unique identifier for the social account.
        sig { returns(String) }
        attr_accessor :id

        # Why this social account currently can't be used for advertising — a failed share
        # or a Meta-side restriction. Null when the account is healthy.
        sig { returns(T.nilable(String)) }
        attr_accessor :error

        # The platform-specific ID for this social account.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        # The display name of the social account on the platform.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The social account this one belongs to on the platform, such as the Facebook
        # page that owns an Instagram account. Null when the social account stands on its
        # own.
        sig do
          returns(T.nilable(WhopSDK::User::SocialAccount::ParentSocialAccount))
        end
        attr_reader :parent_social_account

        sig do
          params(
            parent_social_account:
              T.nilable(
                WhopSDK::User::SocialAccount::ParentSocialAccount::OrHash
              )
          ).void
        end
        attr_writer :parent_social_account

        # The platform the social account exists on.
        sig { returns(WhopSDK::User::SocialAccount::Platform::TaggedSymbol) }
        attr_accessor :platform

        # The URL where the profile picture of the social account can be accessed.
        sig { returns(T.nilable(String)) }
        attr_accessor :profile_picture_url

        sig { returns(T::Array[String]) }
        attr_accessor :scopes

        # The URL where the social account can be accessed on the platform. Null while a
        # Whop-owned page is still being provisioned.
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The username of the social account on the platform. Null while a Whop-owned page
        # is still being provisioned.
        sig { returns(T.nilable(String)) }
        attr_accessor :username

        # Whether the social account is verified on the platform.
        sig { returns(T::Boolean) }
        attr_accessor :verified

        # Social accounts linked to the user (Discord, X/Twitter, Telegram), oldest first.
        # Reading your own profile returns every linked account; other profiles only
        # include what is public on Whop (the primary Discord and the X account). Empty
        # when none are linked.
        sig do
          params(
            id: String,
            error: T.nilable(String),
            external_id: T.nilable(String),
            name: T.nilable(String),
            parent_social_account:
              T.nilable(
                WhopSDK::User::SocialAccount::ParentSocialAccount::OrHash
              ),
            platform: WhopSDK::User::SocialAccount::Platform::OrSymbol,
            profile_picture_url: T.nilable(String),
            scopes: T::Array[String],
            url: T.nilable(String),
            username: T.nilable(String),
            verified: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the social account.
          id:,
          # Why this social account currently can't be used for advertising — a failed share
          # or a Meta-side restriction. Null when the account is healthy.
          error:,
          # The platform-specific ID for this social account.
          external_id:,
          # The display name of the social account on the platform.
          name:,
          # The social account this one belongs to on the platform, such as the Facebook
          # page that owns an Instagram account. Null when the social account stands on its
          # own.
          parent_social_account:,
          # The platform the social account exists on.
          platform:,
          # The URL where the profile picture of the social account can be accessed.
          profile_picture_url:,
          scopes:,
          # The URL where the social account can be accessed on the platform. Null while a
          # Whop-owned page is still being provisioned.
          url:,
          # The username of the social account on the platform. Null while a Whop-owned page
          # is still being provisioned.
          username:,
          # Whether the social account is verified on the platform.
          verified:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              error: T.nilable(String),
              external_id: T.nilable(String),
              name: T.nilable(String),
              parent_social_account:
                T.nilable(WhopSDK::User::SocialAccount::ParentSocialAccount),
              platform: WhopSDK::User::SocialAccount::Platform::TaggedSymbol,
              profile_picture_url: T.nilable(String),
              scopes: T::Array[String],
              url: T.nilable(String),
              username: T.nilable(String),
              verified: T::Boolean
            }
          )
        end
        def to_hash
        end

        class ParentSocialAccount < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::User::SocialAccount::ParentSocialAccount,
                WhopSDK::Internal::AnyHash
              )
            end

          # Social account ID, prefixed `sacc_`.
          sig { returns(String) }
          attr_accessor :id

          # The platform-specific ID for the parent social account.
          sig { returns(T.nilable(String)) }
          attr_accessor :external_id

          # The display name of the parent social account on the platform.
          sig { returns(T.nilable(String)) }
          attr_accessor :name

          # The platform the parent social account exists on.
          sig do
            returns(
              WhopSDK::User::SocialAccount::ParentSocialAccount::Platform::TaggedSymbol
            )
          end
          attr_accessor :platform

          # The URL where the profile picture of the parent social account can be accessed.
          sig { returns(T.nilable(String)) }
          attr_accessor :profile_picture_url

          # The username of the parent social account on the platform.
          sig { returns(T.nilable(String)) }
          attr_accessor :username

          # Whether the parent social account is verified on the platform.
          sig { returns(T::Boolean) }
          attr_accessor :verified

          # The social account this one belongs to on the platform, such as the Facebook
          # page that owns an Instagram account. Null when the social account stands on its
          # own.
          sig do
            params(
              id: String,
              external_id: T.nilable(String),
              name: T.nilable(String),
              platform:
                WhopSDK::User::SocialAccount::ParentSocialAccount::Platform::OrSymbol,
              profile_picture_url: T.nilable(String),
              username: T.nilable(String),
              verified: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # Social account ID, prefixed `sacc_`.
            id:,
            # The platform-specific ID for the parent social account.
            external_id:,
            # The display name of the parent social account on the platform.
            name:,
            # The platform the parent social account exists on.
            platform:,
            # The URL where the profile picture of the parent social account can be accessed.
            profile_picture_url:,
            # The username of the parent social account on the platform.
            username:,
            # Whether the parent social account is verified on the platform.
            verified:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                external_id: T.nilable(String),
                name: T.nilable(String),
                platform:
                  WhopSDK::User::SocialAccount::ParentSocialAccount::Platform::TaggedSymbol,
                profile_picture_url: T.nilable(String),
                username: T.nilable(String),
                verified: T::Boolean
              }
            )
          end
          def to_hash
          end

          # The platform the parent social account exists on.
          module Platform
            extend WhopSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  WhopSDK::User::SocialAccount::ParentSocialAccount::Platform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            X =
              T.let(
                :x,
                WhopSDK::User::SocialAccount::ParentSocialAccount::Platform::TaggedSymbol
              )
            INSTAGRAM =
              T.let(
                :instagram,
                WhopSDK::User::SocialAccount::ParentSocialAccount::Platform::TaggedSymbol
              )
            YOUTUBE =
              T.let(
                :youtube,
                WhopSDK::User::SocialAccount::ParentSocialAccount::Platform::TaggedSymbol
              )
            TIKTOK =
              T.let(
                :tiktok,
                WhopSDK::User::SocialAccount::ParentSocialAccount::Platform::TaggedSymbol
              )
            FACEBOOK =
              T.let(
                :facebook,
                WhopSDK::User::SocialAccount::ParentSocialAccount::Platform::TaggedSymbol
              )
            DISCORD =
              T.let(
                :discord,
                WhopSDK::User::SocialAccount::ParentSocialAccount::Platform::TaggedSymbol
              )
            TELEGRAM =
              T.let(
                :telegram,
                WhopSDK::User::SocialAccount::ParentSocialAccount::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  WhopSDK::User::SocialAccount::ParentSocialAccount::Platform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The platform the social account exists on.
        module Platform
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::User::SocialAccount::Platform)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          X = T.let(:x, WhopSDK::User::SocialAccount::Platform::TaggedSymbol)
          INSTAGRAM =
            T.let(
              :instagram,
              WhopSDK::User::SocialAccount::Platform::TaggedSymbol
            )
          YOUTUBE =
            T.let(
              :youtube,
              WhopSDK::User::SocialAccount::Platform::TaggedSymbol
            )
          TIKTOK =
            T.let(:tiktok, WhopSDK::User::SocialAccount::Platform::TaggedSymbol)
          FACEBOOK =
            T.let(
              :facebook,
              WhopSDK::User::SocialAccount::Platform::TaggedSymbol
            )
          DISCORD =
            T.let(
              :discord,
              WhopSDK::User::SocialAccount::Platform::TaggedSymbol
            )
          TELEGRAM =
            T.let(
              :telegram,
              WhopSDK::User::SocialAccount::Platform::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::User::SocialAccount::Platform::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Staff < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::User::Staff, WhopSDK::Internal::AnyHash)
          end

        # Whether the user holds the admin staff role with a valid second factor.
        sig { returns(T::Boolean) }
        attr_accessor :admin

        # Whether the user can open Whop-internal investigation tooling right now: a
        # qualifying staff role plus their investigation toggle switched on.
        sig { returns(T::Boolean) }
        attr_accessor :investigation_access

        # Whether the user holds the manager staff role with a valid second factor.
        sig { returns(T::Boolean) }
        attr_accessor :manager

        # Whether the user holds the support staff role with a valid second factor.
        sig { returns(T::Boolean) }
        attr_accessor :support

        # Whop staff access flags. Populated only on the self view (retrieved with the
        # reserved id `me`) for callers with staff-read scope; `null` there for every user
        # who is not Whop staff, and always `null` elsewhere.
        sig do
          params(
            admin: T::Boolean,
            investigation_access: T::Boolean,
            manager: T::Boolean,
            support: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the user holds the admin staff role with a valid second factor.
          admin:,
          # Whether the user can open Whop-internal investigation tooling right now: a
          # qualifying staff role plus their investigation toggle switched on.
          investigation_access:,
          # Whether the user holds the manager staff role with a valid second factor.
          manager:,
          # Whether the user holds the support staff role with a valid second factor.
          support:
        )
        end

        sig do
          override.returns(
            {
              admin: T::Boolean,
              investigation_access: T::Boolean,
              manager: T::Boolean,
              support: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
