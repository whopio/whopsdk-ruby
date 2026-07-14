# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Users#retrieve
    class User < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   User ID, prefixed `user_`.
      #
      #   @return [String]
      required :id, String

      # @!attribute balance
      #   The user's balance: personal cash + crypto + in-flight treasury deposits, plus
      #   account balances for accounts they own. Computed only on `GET /users/me`
      #   self-view for callers with balance-read scope; `null` otherwise.
      #
      #   @return [WhopSDK::Models::UserBalance, nil]
      required :balance, -> { WhopSDK::UserBalance }, nil?: true

      # @!attribute balance_history
      #   The user's cumulative wallet balance over time (USD `{ t, v }` points plus
      #   last/min/max), for the balance chart. Opt in with `include_balance_history=true`
      #   on `GET /users/me`; populated only for callers with balance-read scope and
      #   `null` otherwise. A user with no wallet activity returns an empty series.
      #
      #   @return [WhopSDK::Models::User::BalanceHistory, nil]
      required :balance_history, -> { WhopSDK::User::BalanceHistory }, nil?: true

      # @!attribute bio
      #   The user's biography
      #
      #   @return [String, nil]
      required :bio, String, nil?: true

      # @!attribute created_at
      #   When the user was created, as an ISO 8601 timestamp
      #
      #   @return [String]
      required :created_at, String

      # @!attribute earnings_usd
      #   The user's gross USD income over time. Populated only on single-user self reads
      #   for callers with balance-read scope; `null` otherwise.
      #
      #   @return [WhopSDK::Models::User::EarningsUsd, nil]
      required :earnings_usd, -> { WhopSDK::User::EarningsUsd }, nil?: true

      # @!attribute name
      #   The user's display name
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute profile_picture
      #   The user's profile picture, an object with a url
      #
      #   @return [Object, nil]
      required :profile_picture, WhopSDK::Internal::Type::Unknown, nil?: true

      # @!attribute username
      #   The user's unique username
      #
      #   @return [String]
      required :username, String

      # @!attribute verification
      #   Identity verification status for the user's `individual` (KYC) and `business`
      #   (KYB) profiles. Each is `null` until created, otherwise a `status` of
      #   `not_started`, `pending`, `approved`, or `rejected`.
      #
      #   @return [Object]
      required :verification, WhopSDK::Internal::Type::Unknown

      # @!attribute whop_partner_enabled_at
      #   When the user became an enrolled Whop Partner, as an ISO 8601 timestamp. `null`
      #   if never enrolled.
      #
      #   @return [String, nil]
      required :whop_partner_enabled_at, String, nil?: true

      # @!method initialize(id:, balance:, balance_history:, bio:, created_at:, earnings_usd:, name:, profile_picture:, username:, verification:, whop_partner_enabled_at:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::User}
      #   for more details.
      #
      #   @param id [String] User ID, prefixed `user_`.
      #
      #   @param balance [WhopSDK::Models::UserBalance, nil] The user's balance: personal cash + crypto + in-flight treasury deposits, plus a
      #
      #   @param balance_history [WhopSDK::Models::User::BalanceHistory, nil] The user's cumulative wallet balance over time (USD `{ t, v }` points plus last/
      #
      #   @param bio [String, nil] The user's biography
      #
      #   @param created_at [String] When the user was created, as an ISO 8601 timestamp
      #
      #   @param earnings_usd [WhopSDK::Models::User::EarningsUsd, nil] The user's gross USD income over time. Populated only on single-user self reads
      #
      #   @param name [String, nil] The user's display name
      #
      #   @param profile_picture [Object, nil] The user's profile picture, an object with a url
      #
      #   @param username [String] The user's unique username
      #
      #   @param verification [Object] Identity verification status for the user's `individual` (KYC) and `business` (K
      #
      #   @param whop_partner_enabled_at [String, nil] When the user became an enrolled Whop Partner, as an ISO 8601 timestamp. `null`

      # @see WhopSDK::Models::User#balance_history
      class BalanceHistory < WhopSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<WhopSDK::Models::User::BalanceHistory::Data>]
        required :data, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::User::BalanceHistory::Data] }

        # @!attribute last
        #   Value of the most recent point, in USD.
        #
        #   @return [Float]
        required :last, Float

        # @!attribute max
        #   Maximum value across the window, in USD.
        #
        #   @return [Float]
        required :max, Float

        # @!attribute min
        #   Minimum value across the window, in USD.
        #
        #   @return [Float]
        required :min, Float

        # @!method initialize(data:, last:, max:, min:)
        #   The user's cumulative wallet balance over time (USD `{ t, v }` points plus
        #   last/min/max), for the balance chart. Opt in with `include_balance_history=true`
        #   on `GET /users/me`; populated only for callers with balance-read scope and
        #   `null` otherwise. A user with no wallet activity returns an empty series.
        #
        #   @param data [Array<WhopSDK::Models::User::BalanceHistory::Data>]
        #
        #   @param last [Float] Value of the most recent point, in USD.
        #
        #   @param max [Float] Maximum value across the window, in USD.
        #
        #   @param min [Float] Minimum value across the window, in USD.

        class Data < WhopSDK::Internal::Type::BaseModel
          # @!attribute t
          #   Point timestamp, in Unix seconds.
          #
          #   @return [Integer]
          required :t, Integer

          # @!attribute v
          #   Cumulative wallet balance at this point, in USD.
          #
          #   @return [Float]
          required :v, Float

          # @!method initialize(t:, v:)
          #   Cumulative balance points over the requested window, oldest first.
          #
          #   @param t [Integer] Point timestamp, in Unix seconds.
          #
          #   @param v [Float] Cumulative wallet balance at this point, in USD.
        end
      end

      # @see WhopSDK::Models::User#earnings_usd
      class EarningsUsd < WhopSDK::Internal::Type::BaseModel
        # @!attribute first_earned_at
        #   The first time the user earned gross income, as an ISO 8601 timestamp.
        #
        #   @return [String, nil]
        required :first_earned_at, String, nil?: true

        # @!attribute owned_accounts
        #   Gross income from accounts the user owns or is owner-authorized on.
        #
        #   @return [WhopSDK::Models::User::EarningsUsd::OwnedAccounts]
        required :owned_accounts, -> { WhopSDK::User::EarningsUsd::OwnedAccounts }

        # @!attribute personal
        #   Gross income from the user's personal wallet.
        #
        #   @return [WhopSDK::Models::User::EarningsUsd::Personal]
        required :personal, -> { WhopSDK::User::EarningsUsd::Personal }

        # @!attribute total
        #   Gross income from the user's personal wallet plus accounts they own or are
        #   owner-authorized on.
        #
        #   @return [WhopSDK::Models::User::EarningsUsd::Total]
        required :total, -> { WhopSDK::User::EarningsUsd::Total }

        # @!method initialize(first_earned_at:, owned_accounts:, personal:, total:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::User::EarningsUsd} for more details.
        #
        #   The user's gross USD income over time. Populated only on single-user self reads
        #   for callers with balance-read scope; `null` otherwise.
        #
        #   @param first_earned_at [String, nil] The first time the user earned gross income, as an ISO 8601 timestamp.
        #
        #   @param owned_accounts [WhopSDK::Models::User::EarningsUsd::OwnedAccounts] Gross income from accounts the user owns or is owner-authorized on.
        #
        #   @param personal [WhopSDK::Models::User::EarningsUsd::Personal] Gross income from the user's personal wallet.
        #
        #   @param total [WhopSDK::Models::User::EarningsUsd::Total] Gross income from the user's personal wallet plus accounts they own or are owner

        # @see WhopSDK::Models::User::EarningsUsd#owned_accounts
        class OwnedAccounts < WhopSDK::Internal::Type::BaseModel
          # @!attribute last_24_hours
          #   Gross income in USD over the last 24 hours.
          #
          #   @return [String]
          required :last_24_hours, String

          # @!attribute last_30_days
          #   Gross income in USD over the last 30 days.
          #
          #   @return [String]
          required :last_30_days, String

          # @!attribute last_7_days
          #   Gross income in USD over the last 7 days.
          #
          #   @return [String]
          required :last_7_days, String

          # @!attribute lifetime
          #   All-time gross income in USD.
          #
          #   @return [String]
          required :lifetime, String

          # @!method initialize(last_24_hours:, last_30_days:, last_7_days:, lifetime:)
          #   Gross income from accounts the user owns or is owner-authorized on.
          #
          #   @param last_24_hours [String] Gross income in USD over the last 24 hours.
          #
          #   @param last_30_days [String] Gross income in USD over the last 30 days.
          #
          #   @param last_7_days [String] Gross income in USD over the last 7 days.
          #
          #   @param lifetime [String] All-time gross income in USD.
        end

        # @see WhopSDK::Models::User::EarningsUsd#personal
        class Personal < WhopSDK::Internal::Type::BaseModel
          # @!attribute last_24_hours
          #   Gross income in USD over the last 24 hours.
          #
          #   @return [String]
          required :last_24_hours, String

          # @!attribute last_30_days
          #   Gross income in USD over the last 30 days.
          #
          #   @return [String]
          required :last_30_days, String

          # @!attribute last_7_days
          #   Gross income in USD over the last 7 days.
          #
          #   @return [String]
          required :last_7_days, String

          # @!attribute lifetime
          #   All-time gross income in USD.
          #
          #   @return [String]
          required :lifetime, String

          # @!method initialize(last_24_hours:, last_30_days:, last_7_days:, lifetime:)
          #   Gross income from the user's personal wallet.
          #
          #   @param last_24_hours [String] Gross income in USD over the last 24 hours.
          #
          #   @param last_30_days [String] Gross income in USD over the last 30 days.
          #
          #   @param last_7_days [String] Gross income in USD over the last 7 days.
          #
          #   @param lifetime [String] All-time gross income in USD.
        end

        # @see WhopSDK::Models::User::EarningsUsd#total
        class Total < WhopSDK::Internal::Type::BaseModel
          # @!attribute last_24_hours
          #   Gross income in USD over the last 24 hours.
          #
          #   @return [String]
          required :last_24_hours, String

          # @!attribute last_30_days
          #   Gross income in USD over the last 30 days.
          #
          #   @return [String]
          required :last_30_days, String

          # @!attribute last_7_days
          #   Gross income in USD over the last 7 days.
          #
          #   @return [String]
          required :last_7_days, String

          # @!attribute lifetime
          #   All-time gross income in USD.
          #
          #   @return [String]
          required :lifetime, String

          # @!method initialize(last_24_hours:, last_30_days:, last_7_days:, lifetime:)
          #   Gross income from the user's personal wallet plus accounts they own or are
          #   owner-authorized on.
          #
          #   @param last_24_hours [String] Gross income in USD over the last 24 hours.
          #
          #   @param last_30_days [String] Gross income in USD over the last 30 days.
          #
          #   @param last_7_days [String] Gross income in USD over the last 7 days.
          #
          #   @param lifetime [String] All-time gross income in USD.
        end
      end
    end
  end
end
