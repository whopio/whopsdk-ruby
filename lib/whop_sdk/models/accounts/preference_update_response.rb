# frozen_string_literal: true

module WhopSDK
  module Models
    module Accounts
      # @see WhopSDK::Resources::Accounts::Preferences#update
      class PreferenceUpdateResponse < WhopSDK::Internal::Type::BaseModel
        # @!attribute ads_payment_methods
        #   How the account pays for Whop Ads spend. `primary` is charged first; `backup`
        #   covers the charge when the primary fails. `null` until ads billing has been
        #   configured.
        #
        #   @return [WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods, nil]
        required :ads_payment_methods,
                 -> { WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods },
                 nil?: true

        # @!method initialize(ads_payment_methods:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Accounts::PreferenceUpdateResponse} for more details.
        #
        #   @param ads_payment_methods [WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods, nil] How the account pays for Whop Ads spend. `primary` is charged first; `backup` co

        # @see WhopSDK::Models::Accounts::PreferenceUpdateResponse#ads_payment_methods
        class AdsPaymentMethods < WhopSDK::Internal::Type::BaseModel
          # @!attribute backup
          #
          #   @return [WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Backup, nil]
          required :backup,
                   -> { WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Backup },
                   nil?: true

          # @!attribute primary
          #
          #   @return [WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Primary, nil]
          required :primary,
                   -> { WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Primary },
                   nil?: true

          # @!method initialize(backup:, primary:)
          #   How the account pays for Whop Ads spend. `primary` is charged first; `backup`
          #   covers the charge when the primary fails. `null` until ads billing has been
          #   configured.
          #
          #   @param backup [WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Backup, nil]
          #   @param primary [WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Primary, nil]

          # @see WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods#backup
          class Backup < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
            #   payment method (`payt_`) for `card`.
            #
            #   @return [String]
            required :id, String

            # @!attribute type
            #   The funding source kind: a Whop balance or a saved card.
            #
            #   @return [Symbol, WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Backup::Type]
            required :type,
                     enum: -> { WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Backup::Type }

            # @!method initialize(id:, type:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Backup}
            #   for more details.
            #
            #   @param id [String] The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a pay
            #
            #   @param type [Symbol, WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Backup::Type] The funding source kind: a Whop balance or a saved card.

            # The funding source kind: a Whop balance or a saved card.
            #
            # @see WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Backup#type
            module Type
              extend WhopSDK::Internal::Type::Enum

              PLATFORM_BALANCE = :platform_balance
              CARD = :card

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods#primary
          class Primary < WhopSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
            #   payment method (`payt_`) for `card`.
            #
            #   @return [String]
            required :id, String

            # @!attribute type
            #   The funding source kind: a Whop balance or a saved card.
            #
            #   @return [Symbol, WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Primary::Type]
            required :type,
                     enum: -> { WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Primary::Type }

            # @!method initialize(id:, type:)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Primary}
            #   for more details.
            #
            #   @param id [String] The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a pay
            #
            #   @param type [Symbol, WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Primary::Type] The funding source kind: a Whop balance or a saved card.

            # The funding source kind: a Whop balance or a saved card.
            #
            # @see WhopSDK::Models::Accounts::PreferenceUpdateResponse::AdsPaymentMethods::Primary#type
            module Type
              extend WhopSDK::Internal::Type::Enum

              PLATFORM_BALANCE = :platform_balance
              CARD = :card

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
