# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Plans#create
    class PlanCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The company the plan should be created for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute product_id
      #   The access pass the plan is related to.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute billing_period
      #   The interval at which the plan charges (renewal plans).
      #
      #   @return [Integer, nil]
      optional :billing_period, Integer, nil?: true

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, Whopsdk::Models::Currency, nil]
      optional :currency, enum: -> { Whopsdk::Currency }, nil?: true

      # @!attribute custom_fields
      #   An array of custom field objects.
      #
      #   @return [Array<Whopsdk::Models::PlanCreateParams::CustomField>, nil]
      optional :custom_fields,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::PlanCreateParams::CustomField] },
               nil?: true

      # @!attribute description
      #   The description of the plan.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute expiration_days
      #   The interval at which the plan charges (expiration plans).
      #
      #   @return [Integer, nil]
      optional :expiration_days, Integer, nil?: true

      # @!attribute initial_price
      #   An additional amount charged upon first purchase.
      #
      #   @return [Float, nil]
      optional :initial_price, Float, nil?: true

      # @!attribute internal_notes
      #   A personal description or notes section for the business.
      #
      #   @return [String, nil]
      optional :internal_notes, String, nil?: true

      # @!attribute override_tax_type
      #   Whether or not the tax is included in a plan's price (or if it hasn't been set
      #   up)
      #
      #   @return [Symbol, Whopsdk::Models::TaxType, nil]
      optional :override_tax_type, enum: -> { Whopsdk::TaxType }, nil?: true

      # @!attribute plan_type
      #   The type of plan that can be attached to an access pass
      #
      #   @return [Symbol, Whopsdk::Models::PlanType, nil]
      optional :plan_type, enum: -> { Whopsdk::PlanType }, nil?: true

      # @!attribute release_method
      #   The methods of how a plan can be released (including raffles and waitlists).
      #
      #   @return [Symbol, Whopsdk::Models::ReleaseMethod, nil]
      optional :release_method, enum: -> { Whopsdk::ReleaseMethod }, nil?: true

      # @!attribute renewal_price
      #   The amount the customer is charged every billing period.
      #
      #   @return [Float, nil]
      optional :renewal_price, Float, nil?: true

      # @!attribute trial_period_days
      #   The number of free trial days added before a renewal plan.
      #
      #   @return [Integer, nil]
      optional :trial_period_days, Integer, nil?: true

      # @!attribute visibility
      #   Visibility of a resource
      #
      #   @return [Symbol, Whopsdk::Models::Visibility, nil]
      optional :visibility, enum: -> { Whopsdk::Visibility }, nil?: true

      # @!method initialize(company_id:, product_id:, billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, initial_price: nil, internal_notes: nil, override_tax_type: nil, plan_type: nil, release_method: nil, renewal_price: nil, trial_period_days: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::PlanCreateParams} for more details.
      #
      #   @param company_id [String] The company the plan should be created for.
      #
      #   @param product_id [String] The access pass the plan is related to.
      #
      #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
      #
      #   @param currency [Symbol, Whopsdk::Models::Currency, nil] The available currencies on the platform
      #
      #   @param custom_fields [Array<Whopsdk::Models::PlanCreateParams::CustomField>, nil] An array of custom field objects.
      #
      #   @param description [String, nil] The description of the plan.
      #
      #   @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
      #
      #   @param initial_price [Float, nil] An additional amount charged upon first purchase.
      #
      #   @param internal_notes [String, nil] A personal description or notes section for the business.
      #
      #   @param override_tax_type [Symbol, Whopsdk::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
      #
      #   @param plan_type [Symbol, Whopsdk::Models::PlanType, nil] The type of plan that can be attached to an access pass
      #
      #   @param release_method [Symbol, Whopsdk::Models::ReleaseMethod, nil] The methods of how a plan can be released (including raffles and waitlists).
      #
      #   @param renewal_price [Float, nil] The amount the customer is charged every billing period.
      #
      #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
      #
      #   @param visibility [Symbol, Whopsdk::Models::Visibility, nil] Visibility of a resource
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      class CustomField < Whopsdk::Internal::Type::BaseModel
        # @!attribute field_type
        #   The type of the custom field.
        #
        #   @return [Symbol, Whopsdk::Models::PlanCreateParams::CustomField::FieldType, nil]
        required :field_type, enum: -> { Whopsdk::PlanCreateParams::CustomField::FieldType }, nil?: true

        # @!attribute name
        #   The name of the custom field.
        #
        #   @return [String]
        required :name, String

        # @!attribute id
        #   The ID of the custom field (if being updated)
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute order
        #   The order of the field.
        #
        #   @return [Integer, nil]
        optional :order, Integer, nil?: true

        # @!attribute placeholder
        #   The placeholder value of the field.
        #
        #   @return [String, nil]
        optional :placeholder, String, nil?: true

        # @!attribute required
        #   Whether or not the field is required.
        #
        #   @return [Boolean, nil]
        optional :required, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!method initialize(field_type:, name:, id: nil, order: nil, placeholder: nil, required: nil)
        #   @param field_type [Symbol, Whopsdk::Models::PlanCreateParams::CustomField::FieldType, nil] The type of the custom field.
        #
        #   @param name [String] The name of the custom field.
        #
        #   @param id [String, nil] The ID of the custom field (if being updated)
        #
        #   @param order [Integer, nil] The order of the field.
        #
        #   @param placeholder [String, nil] The placeholder value of the field.
        #
        #   @param required [Boolean, nil] Whether or not the field is required.

        # The type of the custom field.
        #
        # @see Whopsdk::Models::PlanCreateParams::CustomField#field_type
        module FieldType
          extend Whopsdk::Internal::Type::Enum

          TEXT = :text

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
