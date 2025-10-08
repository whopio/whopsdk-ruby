# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::CheckoutConfigurations#create
    class CheckoutConfigurationCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute affiliate_code
      #   The affiliate code to use for the checkout session
      #
      #   @return [String, nil]
      optional :affiliate_code, String, nil?: true

      # @!attribute metadata
      #   The metadata to use for the checkout session
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown], nil?: true

      # @!attribute plan
      #   Pass this object to create a new plan for this checkout session
      #
      #   @return [Whopsdk::Models::CheckoutConfigurationCreateParams::Plan, nil]
      optional :plan, -> { Whopsdk::CheckoutConfigurationCreateParams::Plan }, nil?: true

      # @!attribute plan_id
      #   The ID of the plan to use for the checkout session
      #
      #   @return [String, nil]
      optional :plan_id, String, nil?: true

      # @!attribute redirect_url
      #   The URL to redirect the user to after the checkout session is created
      #
      #   @return [String, nil]
      optional :redirect_url, String, nil?: true

      # @!method initialize(affiliate_code: nil, metadata: nil, plan: nil, plan_id: nil, redirect_url: nil, request_options: {})
      #   @param affiliate_code [String, nil] The affiliate code to use for the checkout session
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] The metadata to use for the checkout session
      #
      #   @param plan [Whopsdk::Models::CheckoutConfigurationCreateParams::Plan, nil] Pass this object to create a new plan for this checkout session
      #
      #   @param plan_id [String, nil] The ID of the plan to use for the checkout session
      #
      #   @param redirect_url [String, nil] The URL to redirect the user to after the checkout session is created
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      class Plan < Whopsdk::Internal::Type::BaseModel
        # @!attribute company_id
        #   The company the plan should be created for.
        #
        #   @return [String]
        required :company_id, String

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
        #   @return [Array<Whopsdk::Models::CheckoutConfigurationCreateParams::Plan::CustomField>, nil]
        optional :custom_fields,
                 -> {
                   Whopsdk::Internal::Type::ArrayOf[Whopsdk::CheckoutConfigurationCreateParams::Plan::CustomField]
                 },
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

        # @!attribute force_create_new_plan
        #   Whether to force the creation of a new plan even if one with the same attributes
        #   already exists.
        #
        #   @return [Boolean, nil]
        optional :force_create_new_plan, Whopsdk::Internal::Type::Boolean, nil?: true

        # @!attribute image
        #   An image for the plan. This will be visible on the product page to customers.
        #
        #   @return [Whopsdk::Models::CheckoutConfigurationCreateParams::Plan::Image, nil]
        optional :image, -> { Whopsdk::CheckoutConfigurationCreateParams::Plan::Image }, nil?: true

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

        # @!attribute product_id
        #   The product the plan is related to.
        #
        #   @return [String, nil]
        optional :product_id, String, nil?: true

        # @!attribute release_method
        #   The methods of how a plan can be released.
        #
        #   @return [Symbol, Whopsdk::Models::ReleaseMethod, nil]
        optional :release_method, enum: -> { Whopsdk::ReleaseMethod }, nil?: true

        # @!attribute renewal_price
        #   The amount the customer is charged every billing period.
        #
        #   @return [Float, nil]
        optional :renewal_price, Float, nil?: true

        # @!attribute title
        #   The title of the plan. This will be visible on the product page to customers.
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

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

        # @!method initialize(company_id:, billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, force_create_new_plan: nil, image: nil, initial_price: nil, internal_notes: nil, override_tax_type: nil, plan_type: nil, product_id: nil, release_method: nil, renewal_price: nil, title: nil, trial_period_days: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {Whopsdk::Models::CheckoutConfigurationCreateParams::Plan} for more details.
        #
        #   Pass this object to create a new plan for this checkout session
        #
        #   @param company_id [String] The company the plan should be created for.
        #
        #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
        #
        #   @param currency [Symbol, Whopsdk::Models::Currency, nil] The available currencies on the platform
        #
        #   @param custom_fields [Array<Whopsdk::Models::CheckoutConfigurationCreateParams::Plan::CustomField>, nil] An array of custom field objects.
        #
        #   @param description [String, nil] The description of the plan.
        #
        #   @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
        #
        #   @param force_create_new_plan [Boolean, nil] Whether to force the creation of a new plan even if one with the same attributes
        #
        #   @param image [Whopsdk::Models::CheckoutConfigurationCreateParams::Plan::Image, nil] An image for the plan. This will be visible on the product page to customers.
        #
        #   @param initial_price [Float, nil] An additional amount charged upon first purchase.
        #
        #   @param internal_notes [String, nil] A personal description or notes section for the business.
        #
        #   @param override_tax_type [Symbol, Whopsdk::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
        #
        #   @param plan_type [Symbol, Whopsdk::Models::PlanType, nil] The type of plan that can be attached to an access pass
        #
        #   @param product_id [String, nil] The product the plan is related to.
        #
        #   @param release_method [Symbol, Whopsdk::Models::ReleaseMethod, nil] The methods of how a plan can be released.
        #
        #   @param renewal_price [Float, nil] The amount the customer is charged every billing period.
        #
        #   @param title [String, nil] The title of the plan. This will be visible on the product page to customers.
        #
        #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
        #
        #   @param visibility [Symbol, Whopsdk::Models::Visibility, nil] Visibility of a resource

        class CustomField < Whopsdk::Internal::Type::BaseModel
          # @!attribute field_type
          #   The type of the custom field.
          #
          #   @return [Symbol, :text]
          required :field_type, const: :text

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

          # @!method initialize(name:, id: nil, order: nil, placeholder: nil, required: nil, field_type: :text)
          #   @param name [String] The name of the custom field.
          #
          #   @param id [String, nil] The ID of the custom field (if being updated)
          #
          #   @param order [Integer, nil] The order of the field.
          #
          #   @param placeholder [String, nil] The placeholder value of the field.
          #
          #   @param required [Boolean, nil] Whether or not the field is required.
          #
          #   @param field_type [Symbol, :text] The type of the custom field.
        end

        # @see Whopsdk::Models::CheckoutConfigurationCreateParams::Plan#image
        class Image < Whopsdk::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of an existing attachment object. Use this when updating a resource and
          #   keeping a subset of the attachments. Don't use this unless you know what you're
          #   doing.
          #
          #   @return [String, nil]
          optional :id, String, nil?: true

          # @!attribute direct_upload_id
          #   This ID should be used the first time you upload an attachment. It is the ID of
          #   the direct upload that was created when uploading the file to S3 via the
          #   mediaDirectUpload mutation.
          #
          #   @return [String, nil]
          optional :direct_upload_id, String, nil?: true

          # @!method initialize(id: nil, direct_upload_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Whopsdk::Models::CheckoutConfigurationCreateParams::Plan::Image} for more
          #   details.
          #
          #   An image for the plan. This will be visible on the product page to customers.
          #
          #   @param id [String, nil] The ID of an existing attachment object. Use this when updating a resource and k
          #
          #   @param direct_upload_id [String, nil] This ID should be used the first time you upload an attachment. It is the ID of
        end
      end
    end
  end
end
