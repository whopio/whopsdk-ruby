# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Plans#list
    class PlanListResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the plan.
      #
      #   @return [String]
      required :id, String

      # @!attribute billing_period
      #   The interval at which the plan charges (renewal plans).
      #
      #   @return [Integer, nil]
      required :billing_period, Integer, nil?: true

      # @!attribute company
      #   The company for the plan.
      #
      #   @return [WhopSDK::Models::PlanListResponse::Company, nil]
      required :company, -> { WhopSDK::Models::PlanListResponse::Company }, nil?: true

      # @!attribute created_at
      #   When the plan was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The respective currency identifier for the plan.
      #
      #   @return [Symbol, WhopSDK::Models::Currency]
      required :currency, enum: -> { WhopSDK::Currency }

      # @!attribute description
      #   The description of the plan.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute expiration_days
      #   The interval at which the plan charges (expiration plans).
      #
      #   @return [Integer, nil]
      required :expiration_days, Integer, nil?: true

      # @!attribute initial_price
      #   The price a person has to pay for a plan on the initial purchase.
      #
      #   @return [Float]
      required :initial_price, Float

      # @!attribute internal_notes
      #   A personal description or notes section for the business.
      #
      #   @return [String, nil]
      required :internal_notes, String, nil?: true

      # @!attribute invoice
      #   The invoice associated with this plan.
      #
      #   @return [WhopSDK::Models::PlanListResponse::Invoice, nil]
      required :invoice, -> { WhopSDK::Models::PlanListResponse::Invoice }, nil?: true

      # @!attribute member_count
      #   The number of members for the plan.
      #
      #   @return [Integer, nil]
      required :member_count, Integer, nil?: true

      # @!attribute plan_type
      #   Indicates if the plan is a one time payment or recurring.
      #
      #   @return [Symbol, WhopSDK::Models::PlanType]
      required :plan_type, enum: -> { WhopSDK::PlanType }

      # @!attribute product
      #   The access pass for the plan.
      #
      #   @return [WhopSDK::Models::PlanListResponse::Product, nil]
      required :product, -> { WhopSDK::Models::PlanListResponse::Product }, nil?: true

      # @!attribute purchase_url
      #   The direct link to purchase the product.
      #
      #   @return [String]
      required :purchase_url, String

      # @!attribute release_method
      #   This is the release method the business uses to sell this plan.
      #
      #   @return [Symbol, WhopSDK::Models::ReleaseMethod]
      required :release_method, enum: -> { WhopSDK::ReleaseMethod }

      # @!attribute renewal_price
      #   The price a person has to pay for a plan on the renewal purchase.
      #
      #   @return [Float]
      required :renewal_price, Float

      # @!attribute stock
      #   An un-used field - do not use.
      #
      #   @return [Integer, nil]
      required :stock, Integer, nil?: true

      # @!attribute title
      #   The title of the plan. This will be visible on the product page to customers.
      #
      #   @return [String, nil]
      required :title, String, nil?: true

      # @!attribute trial_period_days
      #   The number of free trial days added before a renewal plan.
      #
      #   @return [Integer, nil]
      required :trial_period_days, Integer, nil?: true

      # @!attribute unlimited_stock
      #   Limits/doesn't limit the number of units available for purchase.
      #
      #   @return [Boolean]
      required :unlimited_stock, WhopSDK::Internal::Type::Boolean

      # @!attribute updated_at
      #   When the plan was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute visibility
      #   Shows or hides the plan from public/business view.
      #
      #   @return [Symbol, WhopSDK::Models::Visibility]
      required :visibility, enum: -> { WhopSDK::Visibility }

      # @!method initialize(id:, billing_period:, company:, created_at:, currency:, description:, expiration_days:, initial_price:, internal_notes:, invoice:, member_count:, plan_type:, product:, purchase_url:, release_method:, renewal_price:, stock:, title:, trial_period_days:, unlimited_stock:, updated_at:, visibility:)
      #   An object representing a (sanitized) plan of an access pass.
      #
      #   @param id [String] The internal ID of the plan.
      #
      #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
      #
      #   @param company [WhopSDK::Models::PlanListResponse::Company, nil] The company for the plan.
      #
      #   @param created_at [Time] When the plan was created.
      #
      #   @param currency [Symbol, WhopSDK::Models::Currency] The respective currency identifier for the plan.
      #
      #   @param description [String, nil] The description of the plan.
      #
      #   @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
      #
      #   @param initial_price [Float] The price a person has to pay for a plan on the initial purchase.
      #
      #   @param internal_notes [String, nil] A personal description or notes section for the business.
      #
      #   @param invoice [WhopSDK::Models::PlanListResponse::Invoice, nil] The invoice associated with this plan.
      #
      #   @param member_count [Integer, nil] The number of members for the plan.
      #
      #   @param plan_type [Symbol, WhopSDK::Models::PlanType] Indicates if the plan is a one time payment or recurring.
      #
      #   @param product [WhopSDK::Models::PlanListResponse::Product, nil] The access pass for the plan.
      #
      #   @param purchase_url [String] The direct link to purchase the product.
      #
      #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod] This is the release method the business uses to sell this plan.
      #
      #   @param renewal_price [Float] The price a person has to pay for a plan on the renewal purchase.
      #
      #   @param stock [Integer, nil] An un-used field - do not use.
      #
      #   @param title [String, nil] The title of the plan. This will be visible on the product page to customers.
      #
      #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
      #
      #   @param unlimited_stock [Boolean] Limits/doesn't limit the number of units available for purchase.
      #
      #   @param updated_at [Time] When the plan was last updated.
      #
      #   @param visibility [Symbol, WhopSDK::Models::Visibility] Shows or hides the plan from public/business view.

      # @see WhopSDK::Models::PlanListResponse#company
      class Company < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID (tag) of the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company for the plan.
        #
        #   @param id [String] The ID (tag) of the company.
        #
        #   @param title [String] The title of the company.
      end

      # @see WhopSDK::Models::PlanListResponse#invoice
      class Invoice < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the invoice.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The invoice associated with this plan.
        #
        #   @param id [String] The ID of the invoice.
      end

      # @see WhopSDK::Models::PlanListResponse#product
      class Product < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public product.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the product. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The access pass for the plan.
        #
        #   @param id [String] The internal ID of the public product.
        #
        #   @param title [String] The title of the product. Use for Whop 4.0.
      end
    end
  end
end
