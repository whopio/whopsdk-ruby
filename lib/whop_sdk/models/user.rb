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
      #   account balances for accounts they own. Computed only on the self view
      #   (retrieved with the reserved id `me`) for callers with balance-read scope;
      #   `null` otherwise.
      #
      #   @return [WhopSDK::Models::User::Balance, nil]
      required :balance, -> { WhopSDK::User::Balance }, nil?: true

      # @!attribute balance_history
      #   The user's cumulative wallet balance over time (USD `{ t, v }` points plus
      #   last/min/max), for the balance chart. Opt in with `include_balance_history=true`
      #   when retrieving yourself with the reserved id `me`; populated only for callers
      #   with balance-read scope and `null` otherwise. A user with no wallet activity
      #   returns an empty series.
      #
      #   @return [WhopSDK::Models::User::BalanceHistory, nil]
      required :balance_history, -> { WhopSDK::User::BalanceHistory }, nil?: true

      # @!attribute banner
      #   The user's profile banner wrapper. `null` when the user has no banner.
      #
      #   @return [WhopSDK::Models::User::Banner, nil]
      required :banner, -> { WhopSDK::User::Banner }, nil?: true

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
      #   The user's gross USD income over time, including a Partner commission breakdown.
      #   Populated only on single-user self reads for callers with balance-read scope;
      #   `null` otherwise.
      #
      #   @return [WhopSDK::Models::User::EarningsUsd, nil]
      required :earnings_usd, -> { WhopSDK::User::EarningsUsd }, nil?: true

      # @!attribute email
      #   The user's email address. Populated only on the self view (retrieved with the
      #   reserved id `me`) for callers with email-read scope; `null` otherwise, or while
      #   the account has no confirmed email yet.
      #
      #   @return [String, nil]
      required :email, String, nil?: true

      # @!attribute name
      #   The user's display name
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute profile_picture
      #   Avatar wrapper; its `url` is always present, using a generated placeholder when
      #   the user set no picture.
      #
      #   @return [WhopSDK::Models::User::ProfilePicture]
      required :profile_picture, -> { WhopSDK::User::ProfilePicture }

      # @!attribute social_accounts
      #
      #   @return [Array<WhopSDK::Models::User::SocialAccount>]
      required :social_accounts, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::User::SocialAccount] }

      # @!attribute staff
      #   Whop staff access flags. Populated only on the self view (retrieved with the
      #   reserved id `me`) for callers with staff-read scope; `null` there for every user
      #   who is not Whop staff, and always `null` elsewhere.
      #
      #   @return [WhopSDK::Models::User::Staff, nil]
      required :staff, -> { WhopSDK::User::Staff }, nil?: true

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

      # @!method initialize(id:, balance:, balance_history:, banner:, bio:, created_at:, earnings_usd:, email:, name:, profile_picture:, social_accounts:, staff:, username:, verification:, whop_partner_enabled_at:)
      #   Some parameter documentations has been truncated, see {WhopSDK::Models::User}
      #   for more details.
      #
      #   @param id [String] User ID, prefixed `user_`.
      #
      #   @param balance [WhopSDK::Models::User::Balance, nil] The user's balance: personal cash + crypto + in-flight treasury deposits, plus a
      #
      #   @param balance_history [WhopSDK::Models::User::BalanceHistory, nil] The user's cumulative wallet balance over time (USD `{ t, v }` points plus last/
      #
      #   @param banner [WhopSDK::Models::User::Banner, nil] The user's profile banner wrapper. `null` when the user has no banner.
      #
      #   @param bio [String, nil] The user's biography
      #
      #   @param created_at [String] When the user was created, as an ISO 8601 timestamp
      #
      #   @param earnings_usd [WhopSDK::Models::User::EarningsUsd, nil] The user's gross USD income over time, including a Partner commission breakdown.
      #
      #   @param email [String, nil] The user's email address. Populated only on the self view (retrieved with the re
      #
      #   @param name [String, nil] The user's display name
      #
      #   @param profile_picture [WhopSDK::Models::User::ProfilePicture] Avatar wrapper; its `url` is always present, using a generated placeholder when
      #
      #   @param social_accounts [Array<WhopSDK::Models::User::SocialAccount>]
      #
      #   @param staff [WhopSDK::Models::User::Staff, nil] Whop staff access flags. Populated only on the self view (retrieved with the res
      #
      #   @param username [String] The user's unique username
      #
      #   @param verification [Object] Identity verification status for the user's `individual` (KYC) and `business` (K
      #
      #   @param whop_partner_enabled_at [String, nil] When the user became an enrolled Whop Partner, as an ISO 8601 timestamp. `null`

      # @see WhopSDK::Models::User#balance
      class Balance < WhopSDK::Internal::Type::BaseModel
        # @!attribute businesses
        #
        #   @return [Array<WhopSDK::Models::User::Balance::Business>]
        required :businesses, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::User::Balance::Business] }

        # @!attribute businesses_total_usd
        #   Combined USD balance across every account the user owns.
        #
        #   @return [String]
        required :businesses_total_usd, String

        # @!attribute cash
        #
        #   @return [Array<WhopSDK::Models::User::Balance::Cash>]
        required :cash, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::User::Balance::Cash] }

        # @!attribute cash_usd
        #   Fiat cash in USD, including pending, in-transit, and reserve.
        #
        #   @return [String]
        required :cash_usd, String

        # @!attribute crypto
        #
        #   @return [Array<WhopSDK::Models::User::Balance::Crypto>]
        required :crypto, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::User::Balance::Crypto] }

        # @!attribute crypto_usd
        #   Crypto holdings in USD.
        #
        #   @return [String]
        required :crypto_usd, String

        # @!attribute pending_usd
        #   Fiat pending and in-transit balances, plus in-flight treasury deposits, in USD.
        #
        #   @return [String]
        required :pending_usd, String

        # @!attribute total_usd
        #   The user's personal balance in USD: cash (available + pending + in-transit +
        #   reserve) + crypto + in-flight treasury deposits. Excludes account balances (see
        #   businesses_total_usd).
        #
        #   @return [String]
        required :total_usd, String

        # @!attribute treasury_pending_usd
        #   Balance-to-wallet USDT0 payouts still in flight, in USD.
        #
        #   @return [String]
        required :treasury_pending_usd, String

        # @!method initialize(businesses:, businesses_total_usd:, cash:, cash_usd:, crypto:, crypto_usd:, pending_usd:, total_usd:, treasury_pending_usd:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::User::Balance} for more details.
        #
        #   The user's balance: personal cash + crypto + in-flight treasury deposits, plus
        #   account balances for accounts they own. Computed only on the self view
        #   (retrieved with the reserved id `me`) for callers with balance-read scope;
        #   `null` otherwise.
        #
        #   @param businesses [Array<WhopSDK::Models::User::Balance::Business>]
        #
        #   @param businesses_total_usd [String] Combined USD balance across every account the user owns.
        #
        #   @param cash [Array<WhopSDK::Models::User::Balance::Cash>]
        #
        #   @param cash_usd [String] Fiat cash in USD, including pending, in-transit, and reserve.
        #
        #   @param crypto [Array<WhopSDK::Models::User::Balance::Crypto>]
        #
        #   @param crypto_usd [String] Crypto holdings in USD.
        #
        #   @param pending_usd [String] Fiat pending and in-transit balances, plus in-flight treasury deposits, in USD.
        #
        #   @param total_usd [String] The user's personal balance in USD: cash (available + pending + in-transit + res
        #
        #   @param treasury_pending_usd [String] Balance-to-wallet USDT0 payouts still in flight, in USD.

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

          # @!attribute in_transit_balance_usd
          #   Balance moving to the user's own wallet or card, converted to USD.
          #
          #   @return [Float]
          required :in_transit_balance_usd, Float

          # @!attribute pending_balance_usd
          #   Pending balance converted to USD.
          #
          #   @return [Float]
          required :pending_balance_usd, Float

          # @!attribute price_usd
          #   USD price per native currency unit, or `null` when no exchange rate is
          #   available.
          #
          #   @return [Float, nil]
          required :price_usd, Float, nil?: true

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

          # @!method initialize(balance:, balance_usd:, currency:, in_transit_balance_usd:, pending_balance_usd:, price_usd:, reserve_balance_usd:, total_withdrawable_balance:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::User::Balance::Cash} for more details.
          #
          #   Per-currency fiat cash balances.
          #
          #   @param balance [Float] Available balance in the native currency.
          #
          #   @param balance_usd [Float] Available balance converted to USD.
          #
          #   @param currency [String] Lowercase ISO currency code, such as `usd` or `eur`.
          #
          #   @param in_transit_balance_usd [Float] Balance moving to the user's own wallet or card, converted to USD.
          #
          #   @param pending_balance_usd [Float] Pending balance converted to USD.
          #
          #   @param price_usd [Float, nil] USD price per native currency unit, or `null` when no exchange rate is available
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

          # @!attribute breakdown
          #   Balance split into available, pending, in-transit, and reserve amounts, as
          #   native-unit decimal strings. Transfers between the user's own wallet and card
          #   are reported in `in_transit` until they arrive.
          #
          #   @return [WhopSDK::Models::User::Balance::Crypto::Breakdown]
          required :breakdown, -> { WhopSDK::User::Balance::Crypto::Breakdown }

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

          # @!method initialize(balance:, breakdown:, icon_url:, name:, price_usd:, symbol:, value_usd:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::User::Balance::Crypto} for more details.
          #
          #   Per-token crypto holdings in the ledger's own wallet.
          #
          #   @param balance [String] Amount held in native token units, as a decimal string.
          #
          #   @param breakdown [WhopSDK::Models::User::Balance::Crypto::Breakdown] Balance split into available, pending, in-transit, and reserve amounts, as nativ
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

          # @see WhopSDK::Models::User::Balance::Crypto#breakdown
          class Breakdown < WhopSDK::Internal::Type::BaseModel
            # @!attribute available
            #   Amount you can spend, send, or withdraw now, in native units, as a decimal
            #   string.
            #
            #   @return [String]
            required :available, String

            # @!attribute in_transit
            #   Amount moving between the account's own destinations, such as a treasury sweep
            #   to its crypto wallet or a card top-up. In native units, as a decimal string.
            #
            #   @return [String]
            required :in_transit, String

            # @!attribute pending
            #   Amount from recent payments still settling, in native units, as a decimal
            #   string.
            #
            #   @return [String]
            required :pending, String

            # @!attribute pending_settlements
            #
            #   @return [Array<WhopSDK::Models::User::Balance::Crypto::Breakdown::PendingSettlement>]
            required :pending_settlements,
                     -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::User::Balance::Crypto::Breakdown::PendingSettlement] }

            # @!attribute reserve
            #   Amount held back, in native units, as a decimal string. Retrieve the account's
            #   reserves for why it is held and when it unlocks.
            #
            #   @return [String]
            required :reserve, String

            # @!method initialize(available:, in_transit:, pending:, pending_settlements:, reserve:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::User::Balance::Crypto::Breakdown} for more details.
            #
            #   Balance split into available, pending, in-transit, and reserve amounts, as
            #   native-unit decimal strings. Transfers between the user's own wallet and card
            #   are reported in `in_transit` until they arrive.
            #
            #   @param available [String] Amount you can spend, send, or withdraw now, in native units, as a decimal strin
            #
            #   @param in_transit [String] Amount moving between the account's own destinations, such as a treasury sweep t
            #
            #   @param pending [String] Amount from recent payments still settling, in native units, as a decimal string
            #
            #   @param pending_settlements [Array<WhopSDK::Models::User::Balance::Crypto::Breakdown::PendingSettlement>]
            #
            #   @param reserve [String] Amount held back, in native units, as a decimal string. Retrieve the account's r

            class PendingSettlement < WhopSDK::Internal::Type::BaseModel
              # @!attribute amount
              #   Amount expected that day, in native units, as a decimal string.
              #
              #   @return [String]
              required :amount, String

              # @!attribute date
              #   The day this money is expected to finish settling, as an ISO 8601 date.
              #
              #   @return [String]
              required :date, String

              # @!method initialize(amount:, date:)
              #   When the pending amount is expected to settle, one entry per day, earliest
              #   first. Money with no scheduled settlement day, such as a transfer in flight, is
              #   left out — so these can sum to less than `pending`, never more.
              #
              #   @param amount [String] Amount expected that day, in native units, as a decimal string.
              #
              #   @param date [String] The day this money is expected to finish settling, as an ISO 8601 date.
            end
          end
        end
      end

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
        #   when retrieving yourself with the reserved id `me`; populated only for callers
        #   with balance-read scope and `null` otherwise. A user with no wallet activity
        #   returns an empty series.
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

      # @see WhopSDK::Models::User#banner
      class Banner < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   Profile banner image URL.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(url:)
        #   The user's profile banner wrapper. `null` when the user has no banner.
        #
        #   @param url [String] Profile banner image URL.
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

        # @!attribute partners
        #   Partner commissions posted to the user's wallet. Pending Partner payouts are
        #   excluded until they post; later reversals do not reduce gross income.
        #
        #   @return [WhopSDK::Models::User::EarningsUsd::Partners]
        required :partners, -> { WhopSDK::User::EarningsUsd::Partners }

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

        # @!method initialize(first_earned_at:, owned_accounts:, partners:, personal:, total:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::User::EarningsUsd} for more details.
        #
        #   The user's gross USD income over time, including a Partner commission breakdown.
        #   Populated only on single-user self reads for callers with balance-read scope;
        #   `null` otherwise.
        #
        #   @param first_earned_at [String, nil] The first time the user earned gross income, as an ISO 8601 timestamp.
        #
        #   @param owned_accounts [WhopSDK::Models::User::EarningsUsd::OwnedAccounts] Gross income from accounts the user owns or is owner-authorized on.
        #
        #   @param partners [WhopSDK::Models::User::EarningsUsd::Partners] Partner commissions posted to the user's wallet. Pending Partner payouts are exc
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

        # @see WhopSDK::Models::User::EarningsUsd#partners
        class Partners < WhopSDK::Internal::Type::BaseModel
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
          #   Partner commissions posted to the user's wallet. Pending Partner payouts are
          #   excluded until they post; later reversals do not reduce gross income.
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

      # @see WhopSDK::Models::User#profile_picture
      class ProfilePicture < WhopSDK::Internal::Type::BaseModel
        # @!attribute url
        #   Avatar image URL. Always present — a generated placeholder when the user set no
        #   picture.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::User::ProfilePicture} for more details.
        #
        #   Avatar wrapper; its `url` is always present, using a generated placeholder when
        #   the user set no picture.
        #
        #   @param url [String] Avatar image URL. Always present — a generated placeholder when the user set no
      end

      class SocialAccount < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the social account.
        #
        #   @return [String]
        required :id, String

        # @!attribute error
        #   Why this social account currently can't be used for advertising — a failed share
        #   or a Meta-side restriction. Null when the account is healthy.
        #
        #   @return [String, nil]
        required :error, String, nil?: true

        # @!attribute external_id
        #   The platform-specific ID for this social account.
        #
        #   @return [String, nil]
        required :external_id, String, nil?: true

        # @!attribute name
        #   The display name of the social account on the platform.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute parent_social_account
        #   The social account this one belongs to on the platform, such as the Facebook
        #   page that owns an Instagram account. Null when the social account stands on its
        #   own.
        #
        #   @return [WhopSDK::Models::User::SocialAccount::ParentSocialAccount, nil]
        required :parent_social_account, -> { WhopSDK::User::SocialAccount::ParentSocialAccount }, nil?: true

        # @!attribute platform
        #   The platform the social account exists on.
        #
        #   @return [Symbol, WhopSDK::Models::User::SocialAccount::Platform]
        required :platform, enum: -> { WhopSDK::User::SocialAccount::Platform }

        # @!attribute profile_picture_url
        #   The URL where the profile picture of the social account can be accessed.
        #
        #   @return [String, nil]
        required :profile_picture_url, String, nil?: true

        # @!attribute scopes
        #
        #   @return [Array<String>]
        required :scopes, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute url
        #   The URL where the social account can be accessed on the platform. Null while a
        #   Whop-owned page is still being provisioned.
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!attribute username
        #   The username of the social account on the platform. Null while a Whop-owned page
        #   is still being provisioned.
        #
        #   @return [String, nil]
        required :username, String, nil?: true

        # @!attribute verified
        #   Whether the social account is verified on the platform.
        #
        #   @return [Boolean]
        required :verified, WhopSDK::Internal::Type::Boolean

        # @!method initialize(id:, error:, external_id:, name:, parent_social_account:, platform:, profile_picture_url:, scopes:, url:, username:, verified:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::User::SocialAccount} for more details.
        #
        #   Social accounts linked to the user (Discord, X/Twitter, Telegram), oldest first.
        #   Reading your own profile returns every linked account; other profiles only
        #   include what is public on Whop (the primary Discord and the X account). Empty
        #   when none are linked.
        #
        #   @param id [String] Unique identifier for the social account.
        #
        #   @param error [String, nil] Why this social account currently can't be used for advertising — a failed share
        #
        #   @param external_id [String, nil] The platform-specific ID for this social account.
        #
        #   @param name [String, nil] The display name of the social account on the platform.
        #
        #   @param parent_social_account [WhopSDK::Models::User::SocialAccount::ParentSocialAccount, nil] The social account this one belongs to on the platform, such as the Facebook pag
        #
        #   @param platform [Symbol, WhopSDK::Models::User::SocialAccount::Platform] The platform the social account exists on.
        #
        #   @param profile_picture_url [String, nil] The URL where the profile picture of the social account can be accessed.
        #
        #   @param scopes [Array<String>]
        #
        #   @param url [String, nil] The URL where the social account can be accessed on the platform. Null while a W
        #
        #   @param username [String, nil] The username of the social account on the platform. Null while a Whop-owned page
        #
        #   @param verified [Boolean] Whether the social account is verified on the platform.

        # @see WhopSDK::Models::User::SocialAccount#parent_social_account
        class ParentSocialAccount < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Social account ID, prefixed `sacc_`.
          #
          #   @return [String]
          required :id, String

          # @!attribute external_id
          #   The platform-specific ID for the parent social account.
          #
          #   @return [String, nil]
          required :external_id, String, nil?: true

          # @!attribute name
          #   The display name of the parent social account on the platform.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute platform
          #   The platform the parent social account exists on.
          #
          #   @return [Symbol, WhopSDK::Models::User::SocialAccount::ParentSocialAccount::Platform]
          required :platform, enum: -> { WhopSDK::User::SocialAccount::ParentSocialAccount::Platform }

          # @!attribute profile_picture_url
          #   The URL where the profile picture of the parent social account can be accessed.
          #
          #   @return [String, nil]
          required :profile_picture_url, String, nil?: true

          # @!attribute username
          #   The username of the parent social account on the platform.
          #
          #   @return [String, nil]
          required :username, String, nil?: true

          # @!attribute verified
          #   Whether the parent social account is verified on the platform.
          #
          #   @return [Boolean]
          required :verified, WhopSDK::Internal::Type::Boolean

          # @!method initialize(id:, external_id:, name:, platform:, profile_picture_url:, username:, verified:)
          #   The social account this one belongs to on the platform, such as the Facebook
          #   page that owns an Instagram account. Null when the social account stands on its
          #   own.
          #
          #   @param id [String] Social account ID, prefixed `sacc_`.
          #
          #   @param external_id [String, nil] The platform-specific ID for the parent social account.
          #
          #   @param name [String, nil] The display name of the parent social account on the platform.
          #
          #   @param platform [Symbol, WhopSDK::Models::User::SocialAccount::ParentSocialAccount::Platform] The platform the parent social account exists on.
          #
          #   @param profile_picture_url [String, nil] The URL where the profile picture of the parent social account can be accessed.
          #
          #   @param username [String, nil] The username of the parent social account on the platform.
          #
          #   @param verified [Boolean] Whether the parent social account is verified on the platform.

          # The platform the parent social account exists on.
          #
          # @see WhopSDK::Models::User::SocialAccount::ParentSocialAccount#platform
          module Platform
            extend WhopSDK::Internal::Type::Enum

            X = :x
            INSTAGRAM = :instagram
            YOUTUBE = :youtube
            TIKTOK = :tiktok
            FACEBOOK = :facebook
            DISCORD = :discord
            TELEGRAM = :telegram

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The platform the social account exists on.
        #
        # @see WhopSDK::Models::User::SocialAccount#platform
        module Platform
          extend WhopSDK::Internal::Type::Enum

          X = :x
          INSTAGRAM = :instagram
          YOUTUBE = :youtube
          TIKTOK = :tiktok
          FACEBOOK = :facebook
          DISCORD = :discord
          TELEGRAM = :telegram

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::User#staff
      class Staff < WhopSDK::Internal::Type::BaseModel
        # @!attribute admin
        #   Whether the user holds the admin staff role with a valid second factor.
        #
        #   @return [Boolean]
        required :admin, WhopSDK::Internal::Type::Boolean

        # @!attribute investigation_access
        #   Whether the user can open Whop-internal investigation tooling right now: a
        #   qualifying staff role plus their investigation toggle switched on.
        #
        #   @return [Boolean]
        required :investigation_access, WhopSDK::Internal::Type::Boolean

        # @!attribute manager
        #   Whether the user holds the manager staff role with a valid second factor.
        #
        #   @return [Boolean]
        required :manager, WhopSDK::Internal::Type::Boolean

        # @!attribute support
        #   Whether the user holds the support staff role with a valid second factor.
        #
        #   @return [Boolean]
        required :support, WhopSDK::Internal::Type::Boolean

        # @!method initialize(admin:, investigation_access:, manager:, support:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::User::Staff} for more details.
        #
        #   Whop staff access flags. Populated only on the self view (retrieved with the
        #   reserved id `me`) for callers with staff-read scope; `null` there for every user
        #   who is not Whop staff, and always `null` elsewhere.
        #
        #   @param admin [Boolean] Whether the user holds the admin staff role with a valid second factor.
        #
        #   @param investigation_access [Boolean] Whether the user can open Whop-internal investigation tooling right now: a quali
        #
        #   @param manager [Boolean] Whether the user holds the manager staff role with a valid second factor.
        #
        #   @param support [Boolean] Whether the user holds the support staff role with a valid second factor.
      end
    end
  end
end
