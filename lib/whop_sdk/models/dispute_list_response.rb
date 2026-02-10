# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Disputes#list
    class DisputeListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the dispute.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The disputed amount in the specified currency, formatted as a decimal.
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute company
      #   The company that the dispute was filed against.
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Company, nil]
      required :company, -> { WhopSDK::Models::DisputeListResponse::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the dispute was created.
      #
      #   @return [Time, nil]
      required :created_at, Time, nil?: true

      # @!attribute currency
      #   The three-letter ISO currency code for the disputed amount.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute editable
      #   Whether the dispute evidence can still be edited and submitted. Returns true
      #   only when the dispute status requires a response.
      #
      #   @return [Boolean, nil]
      required :editable, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute needs_response_by
      #   The deadline by which dispute evidence must be submitted. Null if no response
      #   deadline is set.
      #
      #   @return [Time, nil]
      required :needs_response_by, Time, nil?: true

      # @!attribute payment
      #   The original payment that was disputed.
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Payment, nil]
      required :payment, -> { WhopSDK::Models::DisputeListResponse::Payment }, nil?: true

      # @!attribute plan
      #   The plan associated with the disputed payment. Null if the dispute is not linked
      #   to a specific plan.
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Plan, nil]
      required :plan, -> { WhopSDK::Models::DisputeListResponse::Plan }, nil?: true

      # @!attribute product
      #   The product associated with the disputed payment. Null if the dispute is not
      #   linked to a specific product.
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Product, nil]
      required :product, -> { WhopSDK::Models::DisputeListResponse::Product }, nil?: true

      # @!attribute reason
      #   A human-readable reason for the dispute.
      #
      #   @return [String, nil]
      required :reason, String, nil?: true

      # @!attribute status
      #   The current status of the dispute lifecycle, such as needs_response,
      #   under_review, won, or lost.
      #
      #   @return [Symbol, WhopSDK::Models::DisputeStatuses]
      required :status, enum: -> { WhopSDK::DisputeStatuses }

      # @!attribute visa_rdr
      #   Whether the dispute was automatically resolved through Visa Rapid Dispute
      #   Resolution (RDR).
      #
      #   @return [Boolean]
      required :visa_rdr, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, amount:, company:, created_at:, currency:, editable:, needs_response_by:, payment:, plan:, product:, reason:, status:, visa_rdr:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DisputeListResponse} for more details.
      #
      #   A dispute is a chargeback or payment challenge filed against a company,
      #   including evidence and response status.
      #
      #   @param id [String] The unique identifier for the dispute.
      #
      #   @param amount [Float] The disputed amount in the specified currency, formatted as a decimal.
      #
      #   @param company [WhopSDK::Models::DisputeListResponse::Company, nil] The company that the dispute was filed against.
      #
      #   @param created_at [Time, nil] The datetime the dispute was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The three-letter ISO currency code for the disputed amount.
      #
      #   @param editable [Boolean, nil] Whether the dispute evidence can still be edited and submitted. Returns true onl
      #
      #   @param needs_response_by [Time, nil] The deadline by which dispute evidence must be submitted. Null if no response de
      #
      #   @param payment [WhopSDK::Models::DisputeListResponse::Payment, nil] The original payment that was disputed.
      #
      #   @param plan [WhopSDK::Models::DisputeListResponse::Plan, nil] The plan associated with the disputed payment. Null if the dispute is not linked
      #
      #   @param product [WhopSDK::Models::DisputeListResponse::Product, nil] The product associated with the disputed payment. Null if the dispute is not lin
      #
      #   @param reason [String, nil] A human-readable reason for the dispute.
      #
      #   @param status [Symbol, WhopSDK::Models::DisputeStatuses] The current status of the dispute lifecycle, such as needs_response, under_revie
      #
      #   @param visa_rdr [Boolean] Whether the dispute was automatically resolved through Visa Rapid Dispute Resolu

      # @see WhopSDK::Models::DisputeListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The written name of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company that the dispute was filed against.
        #
        #   @param id [String] The unique identifier for the company.
        #
        #   @param title [String] The written name of the company.
      end

      # @see WhopSDK::Models::DisputeListResponse#payment
      class Payment < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the payment.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The original payment that was disputed.
        #
        #   @param id [String] The unique identifier for the payment.
      end

      # @see WhopSDK::Models::DisputeListResponse#plan
      class Plan < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the plan.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The plan associated with the disputed payment. Null if the dispute is not linked
        #   to a specific plan.
        #
        #   @param id [String] The unique identifier for the plan.
      end

      # @see WhopSDK::Models::DisputeListResponse#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The display name of the product shown to customers on the product page and in
        #   search results.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::DisputeListResponse::Product} for more details.
        #
        #   The product associated with the disputed payment. Null if the dispute is not
        #   linked to a specific product.
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end
    end
  end
end
