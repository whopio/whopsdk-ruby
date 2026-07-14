# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Plans#calculate_tax
    class PlanCalculateTaxResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute currency
      #   Three-letter ISO 4217 currency code for the returned amounts.
      #
      #   @return [String]
      required :currency, String

      # @!attribute status
      #   Whether Whop calculated tax for this preview. `not_calculated` means no tax
      #   could be determined, so `tax_amount` is 0 and `total` equals `subtotal`.
      #
      #   @return [Symbol, WhopSDK::Models::PlanCalculateTaxResponse::Status]
      required :status, enum: -> { WhopSDK::Models::PlanCalculateTaxResponse::Status }

      # @!attribute subtotal
      #   Plan price in the currency's smallest unit, for example cents. For exclusive
      #   tax, this is the pre-tax amount; for inclusive tax, it already includes tax and
      #   equals the total.
      #
      #   @return [Integer]
      required :subtotal, Integer

      # @!attribute tax_amount
      #   Calculated tax amount in the currency's smallest unit. For exclusive tax, this
      #   is added on top of the subtotal; for inclusive tax, it is the portion of the
      #   subtotal that is tax.
      #
      #   @return [Integer]
      required :tax_amount, Integer

      # @!attribute tax_behavior
      #   Whether tax is added on top of the plan price or already included in it for this
      #   buyer's location.
      #
      #   @return [Symbol, WhopSDK::Models::PlanCalculateTaxResponse::TaxBehavior]
      required :tax_behavior, enum: -> { WhopSDK::Models::PlanCalculateTaxResponse::TaxBehavior }

      # @!attribute total
      #   Amount the buyer would pay in the currency's smallest unit.
      #
      #   @return [Integer]
      required :total, Integer

      # @!method initialize(currency:, status:, subtotal:, tax_amount:, tax_behavior:, total:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PlanCalculateTaxResponse} for more details.
      #
      #   @param currency [String] Three-letter ISO 4217 currency code for the returned amounts.
      #
      #   @param status [Symbol, WhopSDK::Models::PlanCalculateTaxResponse::Status] Whether Whop calculated tax for this preview. `not_calculated` means no tax coul
      #
      #   @param subtotal [Integer] Plan price in the currency's smallest unit, for example cents. For exclusive tax
      #
      #   @param tax_amount [Integer] Calculated tax amount in the currency's smallest unit. For exclusive tax, this i
      #
      #   @param tax_behavior [Symbol, WhopSDK::Models::PlanCalculateTaxResponse::TaxBehavior] Whether tax is added on top of the plan price or already included in it for this
      #
      #   @param total [Integer] Amount the buyer would pay in the currency's smallest unit.

      # Whether Whop calculated tax for this preview. `not_calculated` means no tax
      # could be determined, so `tax_amount` is 0 and `total` equals `subtotal`.
      #
      # @see WhopSDK::Models::PlanCalculateTaxResponse#status
      module Status
        extend WhopSDK::Internal::Type::Enum

        CALCULATED = :calculated
        NOT_CALCULATED = :not_calculated

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Whether tax is added on top of the plan price or already included in it for this
      # buyer's location.
      #
      # @see WhopSDK::Models::PlanCalculateTaxResponse#tax_behavior
      module TaxBehavior
        extend WhopSDK::Internal::Type::Enum

        EXCLUSIVE = :exclusive
        INCLUSIVE = :inclusive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
