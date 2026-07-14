# typed: strong

module WhopSDK
  module Models
    class User < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::User, WhopSDK::Internal::AnyHash) }

      # User ID, prefixed `user_`.
      sig { returns(String) }
      attr_accessor :id

      # The user's balance: personal cash + crypto + in-flight treasury deposits, plus
      # account balances for accounts they own. Computed only on `GET /users/me`
      # self-view for callers with balance-read scope; `null` otherwise.
      sig { returns(T.nilable(WhopSDK::UserBalance)) }
      attr_reader :balance

      sig { params(balance: T.nilable(WhopSDK::UserBalance::OrHash)).void }
      attr_writer :balance

      # The user's cumulative wallet balance over time (USD `{ t, v }` points plus
      # last/min/max), for the balance chart. Opt in with `include_balance_history=true`
      # on `GET /users/me`; populated only for callers with balance-read scope and
      # `null` otherwise. A user with no wallet activity returns an empty series.
      sig { returns(T.nilable(WhopSDK::User::BalanceHistory)) }
      attr_reader :balance_history

      sig do
        params(
          balance_history: T.nilable(WhopSDK::User::BalanceHistory::OrHash)
        ).void
      end
      attr_writer :balance_history

      # The user's biography
      sig { returns(T.nilable(String)) }
      attr_accessor :bio

      # When the user was created, as an ISO 8601 timestamp
      sig { returns(String) }
      attr_accessor :created_at

      # The user's gross USD income over time. Populated only on single-user self reads
      # for callers with balance-read scope; `null` otherwise.
      sig { returns(T.nilable(WhopSDK::User::EarningsUsd)) }
      attr_reader :earnings_usd

      sig do
        params(earnings_usd: T.nilable(WhopSDK::User::EarningsUsd::OrHash)).void
      end
      attr_writer :earnings_usd

      # The user's display name
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The user's profile picture, an object with a url
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :profile_picture

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
          balance: T.nilable(WhopSDK::UserBalance::OrHash),
          balance_history: T.nilable(WhopSDK::User::BalanceHistory::OrHash),
          bio: T.nilable(String),
          created_at: String,
          earnings_usd: T.nilable(WhopSDK::User::EarningsUsd::OrHash),
          name: T.nilable(String),
          profile_picture: T.nilable(T.anything),
          username: String,
          verification: T.anything,
          whop_partner_enabled_at: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # User ID, prefixed `user_`.
        id:,
        # The user's balance: personal cash + crypto + in-flight treasury deposits, plus
        # account balances for accounts they own. Computed only on `GET /users/me`
        # self-view for callers with balance-read scope; `null` otherwise.
        balance:,
        # The user's cumulative wallet balance over time (USD `{ t, v }` points plus
        # last/min/max), for the balance chart. Opt in with `include_balance_history=true`
        # on `GET /users/me`; populated only for callers with balance-read scope and
        # `null` otherwise. A user with no wallet activity returns an empty series.
        balance_history:,
        # The user's biography
        bio:,
        # When the user was created, as an ISO 8601 timestamp
        created_at:,
        # The user's gross USD income over time. Populated only on single-user self reads
        # for callers with balance-read scope; `null` otherwise.
        earnings_usd:,
        # The user's display name
        name:,
        # The user's profile picture, an object with a url
        profile_picture:,
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
            balance: T.nilable(WhopSDK::UserBalance),
            balance_history: T.nilable(WhopSDK::User::BalanceHistory),
            bio: T.nilable(String),
            created_at: String,
            earnings_usd: T.nilable(WhopSDK::User::EarningsUsd),
            name: T.nilable(String),
            profile_picture: T.nilable(T.anything),
            username: String,
            verification: T.anything,
            whop_partner_enabled_at: T.nilable(String)
          }
        )
      end
      def to_hash
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
        # on `GET /users/me`; populated only for callers with balance-read scope and
        # `null` otherwise. A user with no wallet activity returns an empty series.
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

        # The user's gross USD income over time. Populated only on single-user self reads
        # for callers with balance-read scope; `null` otherwise.
        sig do
          params(
            first_earned_at: T.nilable(String),
            owned_accounts: WhopSDK::User::EarningsUsd::OwnedAccounts::OrHash,
            personal: WhopSDK::User::EarningsUsd::Personal::OrHash,
            total: WhopSDK::User::EarningsUsd::Total::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The first time the user earned gross income, as an ISO 8601 timestamp.
          first_earned_at:,
          # Gross income from accounts the user owns or is owner-authorized on.
          owned_accounts:,
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
    end
  end
end
