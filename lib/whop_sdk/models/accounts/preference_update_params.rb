# frozen_string_literal: true

module WhopSDK
  module Models
    module Accounts
      # @see WhopSDK::Resources::Accounts::Preferences#update
      class PreferenceUpdateParams < WhopSDK::Internal::Type::BaseModel
        extend WhopSDK::Internal::Type::RequestParameters::Converter
        include WhopSDK::Internal::Type::RequestParameters

        # @!attribute account_id
        #
        #   @return [String]
        required :account_id, String

        # @!attribute ads_payment_methods
        #   How the account pays for Whop Ads spend. `primary` is charged first; `backup`
        #   covers the charge when the primary fails.
        #
        #   @return [WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods, nil]
        optional :ads_payment_methods, -> { WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods }

        # @!method initialize(account_id:, ads_payment_methods: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Accounts::PreferenceUpdateParams} for more details.
        #
        #   @param account_id [String]
        #
        #   @param ads_payment_methods [WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods] How the account pays for Whop Ads spend. `primary` is charged first; `backup` co
        #
        #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

        class AdsPaymentMethods < WhopSDK::Internal::Type::BaseModel
          # @!attribute primary
          #
          #   @return [WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary]
          required :primary, -> { WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary }

          # @!attribute backup
          #   Optional when the primary is `platform_balance`; omitting it removes any
          #   configured card. Required (as `platform_balance`) when the primary is `card`.
          #
          #   @return [WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup, nil]
          optional :backup, -> { WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup }

          # @!method initialize(primary:, backup: nil)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods} for more
          #   details.
          #
          #   How the account pays for Whop Ads spend. `primary` is charged first; `backup`
          #   covers the charge when the primary fails.
          #
          #   @param primary [WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary]
          #
          #   @param backup [WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup] Optional when the primary is `platform_balance`; omitting it removes any configu

          # @see WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods#primary
          class Primary < WhopSDK::Internal::Type::BaseModel
            # @!attribute type
            #   The funding source kind.
            #
            #   @return [Symbol, WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::Type]
            required :type, enum: -> { WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::Type }

            # @!attribute id
            #   The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
            #   payment method (`payt_`) for `card`. Optional for `platform_balance` — defaults
            #   to the account's default Whop balance. Required for `card`.
            #
            #   @return [String, nil]
            optional :id, String

            # @!method initialize(type:, id: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary}
            #   for more details.
            #
            #   @param type [Symbol, WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary::Type] The funding source kind.
            #
            #   @param id [String] The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a pay

            # The funding source kind.
            #
            # @see WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Primary#type
            module Type
              extend WhopSDK::Internal::Type::Enum

              PLATFORM_BALANCE = :platform_balance
              CARD = :card

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods#backup
          class Backup < WhopSDK::Internal::Type::BaseModel
            # @!attribute type
            #   The funding source kind.
            #
            #   @return [Symbol, WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::Type]
            required :type, enum: -> { WhopSDK::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::Type }

            # @!attribute id
            #   The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a
            #   payment method (`payt_`) for `card`. Optional for `platform_balance` — defaults
            #   to the account's default Whop balance. Required for `card`.
            #
            #   @return [String, nil]
            optional :id, String

            # @!method initialize(type:, id: nil)
            #   Some parameter documentations has been truncated, see
            #   {WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup}
            #   for more details.
            #
            #   Optional when the primary is `platform_balance`; omitting it removes any
            #   configured card. Required (as `platform_balance`) when the primary is `card`.
            #
            #   @param type [Symbol, WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup::Type] The funding source kind.
            #
            #   @param id [String] The funding source ID: a Whop balance (`ldgr_`) for `platform_balance`, or a pay

            # The funding source kind.
            #
            # @see WhopSDK::Models::Accounts::PreferenceUpdateParams::AdsPaymentMethods::Backup#type
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
