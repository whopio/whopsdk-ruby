# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Plans#update
    class PlanUpdateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

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
      #   @return [Array<Whopsdk::Models::PlanUpdateParams::CustomField>, nil]
      optional :custom_fields,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::PlanUpdateParams::CustomField] },
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

      # @!attribute image
      #   An image for the plan. This will be visible on the product page to customers.
      #
      #   @return [Whopsdk::Models::PlanUpdateParams::Image, nil]
      optional :image, -> { Whopsdk::PlanUpdateParams::Image }, nil?: true

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

      # @!attribute offer_cancel_discount
      #   Whether or not to offer a discount to cancel a subscription.
      #
      #   @return [Boolean, nil]
      optional :offer_cancel_discount, Whopsdk::Internal::Type::Boolean, nil?: true

      # @!attribute override_tax_type
      #   Whether or not the tax is included in a plan's price (or if it hasn't been set
      #   up)
      #
      #   @return [Symbol, Whopsdk::Models::TaxType, nil]
      optional :override_tax_type, enum: -> { Whopsdk::TaxType }, nil?: true

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

      # @!method initialize(billing_period: nil, currency: nil, custom_fields: nil, description: nil, expiration_days: nil, image: nil, initial_price: nil, internal_notes: nil, offer_cancel_discount: nil, override_tax_type: nil, renewal_price: nil, title: nil, trial_period_days: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::PlanUpdateParams} for more details.
      #
      #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
      #
      #   @param currency [Symbol, Whopsdk::Models::Currency, nil] The available currencies on the platform
      #
      #   @param custom_fields [Array<Whopsdk::Models::PlanUpdateParams::CustomField>, nil] An array of custom field objects.
      #
      #   @param description [String, nil] The description of the plan.
      #
      #   @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
      #
      #   @param image [Whopsdk::Models::PlanUpdateParams::Image, nil] An image for the plan. This will be visible on the product page to customers.
      #
      #   @param initial_price [Float, nil] An additional amount charged upon first purchase.
      #
      #   @param internal_notes [String, nil] A personal description or notes section for the business.
      #
      #   @param offer_cancel_discount [Boolean, nil] Whether or not to offer a discount to cancel a subscription.
      #
      #   @param override_tax_type [Symbol, Whopsdk::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
      #
      #   @param renewal_price [Float, nil] The amount the customer is charged every billing period.
      #
      #   @param title [String, nil] The title of the plan. This will be visible on the product page to customers.
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
        #   {Whopsdk::Models::PlanUpdateParams::Image} for more details.
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
