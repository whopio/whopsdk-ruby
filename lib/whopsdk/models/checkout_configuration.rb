# frozen_string_literal: true

module Whopsdk
  module Models
    class CheckoutConfiguration < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the checkout session
      #
      #   @return [String]
      required :id, String

      # @!attribute affiliate_code
      #   The affiliate code to use for the checkout session
      #
      #   @return [String]
      required :affiliate_code, String

      # @!attribute company_id
      #   The ID of the company to use for the checkout session
      #
      #   @return [String]
      required :company_id, String

      # @!attribute metadata
      #   The metadata to use for the checkout session
      #
      #   @return [Hash{Symbol=>Object}]
      required :metadata, Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown]

      # @!attribute plan
      #   The plan to use for the checkout session
      #
      #   @return [Whopsdk::Models::CheckoutConfiguration::Plan]
      required :plan, -> { Whopsdk::CheckoutConfiguration::Plan }

      # @!attribute purchase_url
      #   The URL to redirect the user to after the checkout session is created
      #
      #   @return [String]
      required :purchase_url, String

      # @!attribute redirect_url
      #   The URL to redirect the user to after the checkout session is created
      #
      #   @return [String]
      required :redirect_url, String

      # @!method initialize(id:, affiliate_code:, company_id:, metadata:, plan:, purchase_url:, redirect_url:)
      #   A checkout session
      #
      #   @param id [String] The ID of the checkout session
      #
      #   @param affiliate_code [String] The affiliate code to use for the checkout session
      #
      #   @param company_id [String] The ID of the company to use for the checkout session
      #
      #   @param metadata [Hash{Symbol=>Object}] The metadata to use for the checkout session
      #
      #   @param plan [Whopsdk::Models::CheckoutConfiguration::Plan] The plan to use for the checkout session
      #
      #   @param purchase_url [String] The URL to redirect the user to after the checkout session is created
      #
      #   @param redirect_url [String] The URL to redirect the user to after the checkout session is created

      # @see Whopsdk::Models::CheckoutConfiguration#plan
      class Plan < Whopsdk::Internal::Type::BaseModel
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

        # @!attribute currency
        #   The respective currency identifier for the plan.
        #
        #   @return [Symbol, Whopsdk::Models::Currency]
        required :currency, enum: -> { Whopsdk::Currency }

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

        # @!attribute plan_type
        #   Indicates if the plan is a one time payment or recurring.
        #
        #   @return [Symbol, Whopsdk::Models::PlanType]
        required :plan_type, enum: -> { Whopsdk::PlanType }

        # @!attribute release_method
        #   This is the release method the business uses to sell this plan.
        #
        #   @return [Symbol, Whopsdk::Models::ReleaseMethod]
        required :release_method, enum: -> { Whopsdk::ReleaseMethod }

        # @!attribute renewal_price
        #   The price a person has to pay for a plan on the renewal purchase.
        #
        #   @return [Float]
        required :renewal_price, Float

        # @!attribute trial_period_days
        #   The number of free trial days added before a renewal plan.
        #
        #   @return [Integer, nil]
        required :trial_period_days, Integer, nil?: true

        # @!attribute visibility
        #   Shows or hides the plan from public/business view.
        #
        #   @return [Symbol, Whopsdk::Models::Visibility]
        required :visibility, enum: -> { Whopsdk::Visibility }

        # @!method initialize(id:, billing_period:, currency:, expiration_days:, initial_price:, plan_type:, release_method:, renewal_price:, trial_period_days:, visibility:)
        #   The plan to use for the checkout session
        #
        #   @param id [String] The internal ID of the plan.
        #
        #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
        #
        #   @param currency [Symbol, Whopsdk::Models::Currency] The respective currency identifier for the plan.
        #
        #   @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
        #
        #   @param initial_price [Float] The price a person has to pay for a plan on the initial purchase.
        #
        #   @param plan_type [Symbol, Whopsdk::Models::PlanType] Indicates if the plan is a one time payment or recurring.
        #
        #   @param release_method [Symbol, Whopsdk::Models::ReleaseMethod] This is the release method the business uses to sell this plan.
        #
        #   @param renewal_price [Float] The price a person has to pay for a plan on the renewal purchase.
        #
        #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
        #
        #   @param visibility [Symbol, Whopsdk::Models::Visibility] Shows or hides the plan from public/business view.
      end
    end
  end
end
