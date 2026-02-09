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
      #   The amount of the dispute (formatted).
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute company
      #   The company the dispute is against.
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Company, nil]
      required :company, -> { WhopSDK::Models::DisputeListResponse::Company }, nil?: true

      # @!attribute created_at
      #   The datetime the dispute was created.
      #
      #   @return [Time, nil]
      required :created_at, Time, nil?: true

      # @!attribute currency
      #   The currency of the dispute.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute editable
      #   Whether or not the dispute data can be edited.
      #
      #   @return [Boolean, nil]
      required :editable, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute needs_response_by
      #   The last date the dispute is allow to be submitted by.
      #
      #   @return [Time, nil]
      required :needs_response_by, Time, nil?: true

      # @!attribute payment
      #   The payment that got disputed
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Payment, nil]
      required :payment, -> { WhopSDK::Models::DisputeListResponse::Payment }, nil?: true

      # @!attribute plan
      #   The plan that got disputed
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Plan, nil]
      required :plan, -> { WhopSDK::Models::DisputeListResponse::Plan }, nil?: true

      # @!attribute product
      #   The product that got disputed
      #
      #   @return [WhopSDK::Models::DisputeListResponse::Product, nil]
      required :product, -> { WhopSDK::Models::DisputeListResponse::Product }, nil?: true

      # @!attribute reason
      #   The reason for the dispute
      #
      #   @return [String, nil]
      required :reason, String, nil?: true

      # @!attribute status
      #   The status of the dispute (mimics stripe's dispute status).
      #
      #   @return [Symbol, WhopSDK::Models::DisputeStatuses]
      required :status, enum: -> { WhopSDK::DisputeStatuses }

      # @!attribute visa_rdr
      #   Whether or not the dispute is a Visa Rapid Dispute Resolution.
      #
      #   @return [Boolean]
      required :visa_rdr, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, amount:, company:, created_at:, currency:, editable:, needs_response_by:, payment:, plan:, product:, reason:, status:, visa_rdr:)
      #   A dispute is a chargeback or payment challenge filed against a company,
      #   including evidence and response status.
      #
      #   @param id [String] The unique identifier for the dispute.
      #
      #   @param amount [Float] The amount of the dispute (formatted).
      #
      #   @param company [WhopSDK::Models::DisputeListResponse::Company, nil] The company the dispute is against.
      #
      #   @param created_at [Time, nil] The datetime the dispute was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The currency of the dispute.
      #
      #   @param editable [Boolean, nil] Whether or not the dispute data can be edited.
      #
      #   @param needs_response_by [Time, nil] The last date the dispute is allow to be submitted by.
      #
      #   @param payment [WhopSDK::Models::DisputeListResponse::Payment, nil] The payment that got disputed
      #
      #   @param plan [WhopSDK::Models::DisputeListResponse::Plan, nil] The plan that got disputed
      #
      #   @param product [WhopSDK::Models::DisputeListResponse::Product, nil] The product that got disputed
      #
      #   @param reason [String, nil] The reason for the dispute
      #
      #   @param status [Symbol, WhopSDK::Models::DisputeStatuses] The status of the dispute (mimics stripe's dispute status).
      #
      #   @param visa_rdr [Boolean] Whether or not the dispute is a Visa Rapid Dispute Resolution.

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
        #   The company the dispute is against.
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
        #   The payment that got disputed
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
        #   The plan that got disputed
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
        #   The product that got disputed
        #
        #   @param id [String] The unique identifier for the product.
        #
        #   @param title [String] The display name of the product shown to customers on the product page and in se
      end
    end
  end
end
