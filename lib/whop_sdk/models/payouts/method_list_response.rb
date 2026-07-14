# frozen_string_literal: true

module WhopSDK
  module Models
    module Payouts
      # @see WhopSDK::Resources::Payouts::Methods#list
      class MethodListResponse < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Payout method ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute account_reference
        #   Masked identifier for the destination, such as the last four digits of a bank
        #   account.
        #
        #   @return [String, nil]
        required :account_reference, String, nil?: true

        # @!attribute created_at
        #   When the payout method was added.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute destination_currency
        #   Currency payouts are delivered in for this method.
        #
        #   @return [String]
        required :destination_currency, String

        # @!attribute institution_name
        #   Name of the bank or institution receiving payouts.
        #
        #   @return [String, nil]
        required :institution_name, String, nil?: true

        # @!attribute is_default
        #   Whether this is the default payout method for the account.
        #
        #   @return [Boolean]
        required :is_default, WhopSDK::Internal::Type::Boolean

        # @!attribute nickname
        #   User-defined label for the payout method.
        #
        #   @return [String, nil]
        required :nickname, String, nil?: true

        # @!attribute object
        #
        #   @return [Symbol, WhopSDK::Models::Payouts::MethodListResponse::Object]
        required :object, enum: -> { WhopSDK::Models::Payouts::MethodListResponse::Object }

        # @!attribute payer_name
        #   Display name of the payout rail, such as `ACH Bank Deposit`.
        #
        #   @return [String, nil]
        required :payer_name, String, nil?: true

        # @!attribute payout_destination
        #   The payout rail this method delivers through.
        #
        #   @return [WhopSDK::Models::Payouts::MethodListResponse::PayoutDestination, nil]
        required :payout_destination,
                 -> { WhopSDK::Models::Payouts::MethodListResponse::PayoutDestination },
                 nil?: true

        # @!attribute quote
        #   Fee and delivery estimate for withdrawing the requested amount through this
        #   method. Null unless an amount was provided, or when the estimate is unavailable.
        #
        #   @return [WhopSDK::Models::Payouts::MethodListResponse::Quote, nil]
        required :quote, -> { WhopSDK::Models::Payouts::MethodListResponse::Quote }, nil?: true

        # @!attribute status
        #   Lifecycle status: `created` means saved but unused, `active` means a payout
        #   succeeded through it, `broken` means the last payout failed.
        #
        #   @return [Symbol, WhopSDK::Models::Payouts::MethodListResponse::Status]
        required :status, enum: -> { WhopSDK::Models::Payouts::MethodListResponse::Status }

        # @!method initialize(id:, account_reference:, created_at:, destination_currency:, institution_name:, is_default:, nickname:, object:, payer_name:, payout_destination:, quote:, status:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::Payouts::MethodListResponse} for more details.
        #
        #   @param id [String] Payout method ID.
        #
        #   @param account_reference [String, nil] Masked identifier for the destination, such as the last four digits of a bank ac
        #
        #   @param created_at [Time] When the payout method was added.
        #
        #   @param destination_currency [String] Currency payouts are delivered in for this method.
        #
        #   @param institution_name [String, nil] Name of the bank or institution receiving payouts.
        #
        #   @param is_default [Boolean] Whether this is the default payout method for the account.
        #
        #   @param nickname [String, nil] User-defined label for the payout method.
        #
        #   @param object [Symbol, WhopSDK::Models::Payouts::MethodListResponse::Object]
        #
        #   @param payer_name [String, nil] Display name of the payout rail, such as `ACH Bank Deposit`.
        #
        #   @param payout_destination [WhopSDK::Models::Payouts::MethodListResponse::PayoutDestination, nil] The payout rail this method delivers through.
        #
        #   @param quote [WhopSDK::Models::Payouts::MethodListResponse::Quote, nil] Fee and delivery estimate for withdrawing the requested amount through this meth
        #
        #   @param status [Symbol, WhopSDK::Models::Payouts::MethodListResponse::Status] Lifecycle status: `created` means saved but unused, `active` means a payout succ

        # @see WhopSDK::Models::Payouts::MethodListResponse#object
        module Object
          extend WhopSDK::Internal::Type::Enum

          PAYOUT_METHOD = :payout_method

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see WhopSDK::Models::Payouts::MethodListResponse#payout_destination
        class PayoutDestination < WhopSDK::Internal::Type::BaseModel
          # @!attribute delivery_type
          #   How funds are delivered, for example `bank_deposit`.
          #
          #   @return [String]
          required :delivery_type, String

          # @!attribute icon_url
          #   Payout destination icon URL.
          #
          #   @return [String, nil]
          required :icon_url, String, nil?: true

          # @!attribute name
          #   Payout destination display name.
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute supports_instant_delivery
          #
          #   @return [Boolean]
          required :supports_instant_delivery, WhopSDK::Internal::Type::Boolean

          # @!attribute supports_standard_delivery
          #
          #   @return [Boolean]
          required :supports_standard_delivery, WhopSDK::Internal::Type::Boolean

          # @!method initialize(delivery_type:, icon_url:, name:, supports_instant_delivery:, supports_standard_delivery:)
          #   The payout rail this method delivers through.
          #
          #   @param delivery_type [String] How funds are delivered, for example `bank_deposit`.
          #
          #   @param icon_url [String, nil] Payout destination icon URL.
          #
          #   @param name [String, nil] Payout destination display name.
          #
          #   @param supports_instant_delivery [Boolean]
          #
          #   @param supports_standard_delivery [Boolean]
        end

        # @see WhopSDK::Models::Payouts::MethodListResponse#quote
        class Quote < WhopSDK::Internal::Type::BaseModel
          # @!attribute amount
          #   The withdrawal amount the quote is for.
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute currency
          #   Currency of the quoted amount.
          #
          #   @return [String]
          required :currency, String

          # @!attribute exchange_rate
          #   Exchange rate from the withdrawal currency to the destination currency.
          #
          #   @return [Float]
          required :exchange_rate, Float

          # @!attribute instant
          #   Instant-delivery estimate. Null if the method does not support instant delivery,
          #   instant delivery is unavailable for the account, or the amount does not cover
          #   the fee.
          #
          #   @return [WhopSDK::Models::Payouts::MethodListResponse::Quote::Instant, nil]
          required :instant, -> { WhopSDK::Models::Payouts::MethodListResponse::Quote::Instant }, nil?: true

          # @!attribute max_limit
          #   Maximum withdrawal amount for this method, in the withdrawal currency.
          #
          #   @return [Float, nil]
          required :max_limit, Float, nil?: true

          # @!attribute min_limit
          #   Minimum withdrawal amount for this method, in the withdrawal currency.
          #
          #   @return [Float]
          required :min_limit, Float

          # @!attribute standard
          #   Standard-delivery estimate. Null if the method does not support standard
          #   delivery, or the amount does not cover the fee.
          #
          #   @return [WhopSDK::Models::Payouts::MethodListResponse::Quote::Standard, nil]
          required :standard, -> { WhopSDK::Models::Payouts::MethodListResponse::Quote::Standard }, nil?: true

          # @!method initialize(amount:, currency:, exchange_rate:, instant:, max_limit:, min_limit:, standard:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::Payouts::MethodListResponse::Quote} for more details.
          #
          #   Fee and delivery estimate for withdrawing the requested amount through this
          #   method. Null unless an amount was provided, or when the estimate is unavailable.
          #
          #   @param amount [Float] The withdrawal amount the quote is for.
          #
          #   @param currency [String] Currency of the quoted amount.
          #
          #   @param exchange_rate [Float] Exchange rate from the withdrawal currency to the destination currency.
          #
          #   @param instant [WhopSDK::Models::Payouts::MethodListResponse::Quote::Instant, nil] Instant-delivery estimate. Null if the method does not support instant delivery,
          #
          #   @param max_limit [Float, nil] Maximum withdrawal amount for this method, in the withdrawal currency.
          #
          #   @param min_limit [Float] Minimum withdrawal amount for this method, in the withdrawal currency.
          #
          #   @param standard [WhopSDK::Models::Payouts::MethodListResponse::Quote::Standard, nil] Standard-delivery estimate. Null if the method does not support standard deliver

          # @see WhopSDK::Models::Payouts::MethodListResponse::Quote#instant
          class Instant < WhopSDK::Internal::Type::BaseModel
            # @!attribute estimated_arrival
            #   Estimated time the funds become available.
            #
            #   @return [Time]
            required :estimated_arrival, Time

            # @!attribute fee
            #   Total fee charged, in the withdrawal currency.
            #
            #   @return [Float]
            required :fee, Float

            # @!attribute total_received
            #   Amount delivered after fees, in the withdrawal currency.
            #
            #   @return [Float]
            required :total_received, Float

            # @!method initialize(estimated_arrival:, fee:, total_received:)
            #   Instant-delivery estimate. Null if the method does not support instant delivery,
            #   instant delivery is unavailable for the account, or the amount does not cover
            #   the fee.
            #
            #   @param estimated_arrival [Time] Estimated time the funds become available.
            #
            #   @param fee [Float] Total fee charged, in the withdrawal currency.
            #
            #   @param total_received [Float] Amount delivered after fees, in the withdrawal currency.
          end

          # @see WhopSDK::Models::Payouts::MethodListResponse::Quote#standard
          class Standard < WhopSDK::Internal::Type::BaseModel
            # @!attribute estimated_arrival
            #   Estimated time the funds become available.
            #
            #   @return [Time]
            required :estimated_arrival, Time

            # @!attribute fee
            #   Total fee charged, in the withdrawal currency.
            #
            #   @return [Float]
            required :fee, Float

            # @!attribute total_received
            #   Amount delivered after fees, in the withdrawal currency.
            #
            #   @return [Float]
            required :total_received, Float

            # @!method initialize(estimated_arrival:, fee:, total_received:)
            #   Standard-delivery estimate. Null if the method does not support standard
            #   delivery, or the amount does not cover the fee.
            #
            #   @param estimated_arrival [Time] Estimated time the funds become available.
            #
            #   @param fee [Float] Total fee charged, in the withdrawal currency.
            #
            #   @param total_received [Float] Amount delivered after fees, in the withdrawal currency.
          end
        end

        # Lifecycle status: `created` means saved but unused, `active` means a payout
        # succeeded through it, `broken` means the last payout failed.
        #
        # @see WhopSDK::Models::Payouts::MethodListResponse#status
        module Status
          extend WhopSDK::Internal::Type::Enum

          CREATED = :created
          ACTIVE = :active
          BROKEN = :broken

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
