# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Products#create
    class ProductCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to create this product for.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute title
      #   The display name of the product. Maximum 40 characters.
      #
      #   @return [String]
      required :title, String

      # @!attribute business_type
      #   The different business types a company can be.
      #
      #   @return [Symbol, WhopSDK::Models::BusinessTypes, nil]
      optional :business_type, enum: -> { WhopSDK::BusinessTypes }, nil?: true

      # @!attribute collect_shipping_address
      #   Whether the checkout flow collects a shipping address from the customer.
      #
      #   @return [Boolean, nil]
      optional :collect_shipping_address, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute custom_cta
      #   The different types of custom CTAs that can be selected.
      #
      #   @return [Symbol, WhopSDK::Models::CustomCta, nil]
      optional :custom_cta, enum: -> { WhopSDK::CustomCta }, nil?: true

      # @!attribute custom_cta_url
      #   A URL that the call-to-action button links to instead of the default checkout
      #   flow.
      #
      #   @return [String, nil]
      optional :custom_cta_url, String, nil?: true

      # @!attribute custom_statement_descriptor
      #   A custom text label that appears on the customer's bank statement. Must be 5-22
      #   characters, contain at least one letter, and not contain <, >, \, ', or "
      #   characters.
      #
      #   @return [String, nil]
      optional :custom_statement_descriptor, String, nil?: true

      # @!attribute description
      #   A written description of the product displayed on its product page.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute experience_ids
      #   The unique identifiers of experiences to connect to this product.
      #
      #   @return [Array<String>, nil]
      optional :experience_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute global_affiliate_percentage
      #   The commission rate as a percentage that affiliates earn through the global
      #   affiliate program.
      #
      #   @return [Float, nil]
      optional :global_affiliate_percentage, Float, nil?: true

      # @!attribute global_affiliate_status
      #   The different statuses of the global affiliate program for a product.
      #
      #   @return [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil]
      optional :global_affiliate_status, enum: -> { WhopSDK::GlobalAffiliateStatus }, nil?: true

      # @!attribute headline
      #   A short marketing headline displayed prominently on the product page.
      #
      #   @return [String, nil]
      optional :headline, String, nil?: true

      # @!attribute industry_type
      #   The different industry types a company can be in.
      #
      #   @return [Symbol, WhopSDK::Models::IndustryTypes, nil]
      optional :industry_type, enum: -> { WhopSDK::IndustryTypes }, nil?: true

      # @!attribute member_affiliate_percentage
      #   The commission rate as a percentage that members earn through the member
      #   affiliate program.
      #
      #   @return [Float, nil]
      optional :member_affiliate_percentage, Float, nil?: true

      # @!attribute member_affiliate_status
      #   The different statuses of the global affiliate program for a product.
      #
      #   @return [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil]
      optional :member_affiliate_status, enum: -> { WhopSDK::GlobalAffiliateStatus }, nil?: true

      # @!attribute plan_options
      #   Configuration for an automatically generated plan to attach to this product.
      #
      #   @return [WhopSDK::Models::ProductCreateParams::PlanOptions, nil]
      optional :plan_options, -> { WhopSDK::ProductCreateParams::PlanOptions }, nil?: true

      # @!attribute product_highlights
      #   Key features and benefits to display on the product page.
      #
      #   @return [Array<WhopSDK::Models::ProductCreateParams::ProductHighlight>, nil]
      optional :product_highlights,
               -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::ProductCreateParams::ProductHighlight] },
               nil?: true

      # @!attribute product_tax_code_id
      #   The unique identifier of the tax classification code to apply to this product.
      #
      #   @return [String, nil]
      optional :product_tax_code_id, String, nil?: true

      # @!attribute redirect_purchase_url
      #   A URL to redirect the customer to after completing a purchase.
      #
      #   @return [String, nil]
      optional :redirect_purchase_url, String, nil?: true

      # @!attribute route
      #   The URL slug for the product's public link.
      #
      #   @return [String, nil]
      optional :route, String, nil?: true

      # @!attribute visibility
      #   Visibility of a resource
      #
      #   @return [Symbol, WhopSDK::Models::Visibility, nil]
      optional :visibility, enum: -> { WhopSDK::Visibility }, nil?: true

      # @!method initialize(company_id:, title:, business_type: nil, collect_shipping_address: nil, custom_cta: nil, custom_cta_url: nil, custom_statement_descriptor: nil, description: nil, experience_ids: nil, global_affiliate_percentage: nil, global_affiliate_status: nil, headline: nil, industry_type: nil, member_affiliate_percentage: nil, member_affiliate_status: nil, plan_options: nil, product_highlights: nil, product_tax_code_id: nil, redirect_purchase_url: nil, route: nil, visibility: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ProductCreateParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to create this product for.
      #
      #   @param title [String] The display name of the product. Maximum 40 characters.
      #
      #   @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      #   @param collect_shipping_address [Boolean, nil] Whether the checkout flow collects a shipping address from the customer.
      #
      #   @param custom_cta [Symbol, WhopSDK::Models::CustomCta, nil] The different types of custom CTAs that can be selected.
      #
      #   @param custom_cta_url [String, nil] A URL that the call-to-action button links to instead of the default checkout fl
      #
      #   @param custom_statement_descriptor [String, nil] A custom text label that appears on the customer's bank statement. Must be 5-22
      #
      #   @param description [String, nil] A written description of the product displayed on its product page.
      #
      #   @param experience_ids [Array<String>, nil] The unique identifiers of experiences to connect to this product.
      #
      #   @param global_affiliate_percentage [Float, nil] The commission rate as a percentage that affiliates earn through the global affi
      #
      #   @param global_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for a product.
      #
      #   @param headline [String, nil] A short marketing headline displayed prominently on the product page.
      #
      #   @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      #   @param member_affiliate_percentage [Float, nil] The commission rate as a percentage that members earn through the member affilia
      #
      #   @param member_affiliate_status [Symbol, WhopSDK::Models::GlobalAffiliateStatus, nil] The different statuses of the global affiliate program for a product.
      #
      #   @param plan_options [WhopSDK::Models::ProductCreateParams::PlanOptions, nil] Configuration for an automatically generated plan to attach to this product.
      #
      #   @param product_highlights [Array<WhopSDK::Models::ProductCreateParams::ProductHighlight>, nil] Key features and benefits to display on the product page.
      #
      #   @param product_tax_code_id [String, nil] The unique identifier of the tax classification code to apply to this product.
      #
      #   @param redirect_purchase_url [String, nil] A URL to redirect the customer to after completing a purchase.
      #
      #   @param route [String, nil] The URL slug for the product's public link.
      #
      #   @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class PlanOptions < WhopSDK::Internal::Type::BaseModel
        # @!attribute base_currency
        #   The available currencies on the platform
        #
        #   @return [Symbol, WhopSDK::Models::Currency, nil]
        optional :base_currency, enum: -> { WhopSDK::Currency }, nil?: true

        # @!attribute billing_period
        #   The interval at which the plan charges (renewal plans).
        #
        #   @return [Integer, nil]
        optional :billing_period, Integer, nil?: true

        # @!attribute custom_fields
        #   An array of custom field objects.
        #
        #   @return [Array<WhopSDK::Models::ProductCreateParams::PlanOptions::CustomField>, nil]
        optional :custom_fields,
                 -> {
                   WhopSDK::Internal::Type::ArrayOf[WhopSDK::ProductCreateParams::PlanOptions::CustomField]
                 },
                 nil?: true

        # @!attribute initial_price
        #   An additional amount charged upon first purchase. Provided as a number in the
        #   specified currency. Eg: 10.43 for $10.43 USD.
        #
        #   @return [Float, nil]
        optional :initial_price, Float, nil?: true

        # @!attribute plan_type
        #   The type of plan that can be attached to a product
        #
        #   @return [Symbol, WhopSDK::Models::PlanType, nil]
        optional :plan_type, enum: -> { WhopSDK::PlanType }, nil?: true

        # @!attribute release_method
        #   The methods of how a plan can be released.
        #
        #   @return [Symbol, WhopSDK::Models::ReleaseMethod, nil]
        optional :release_method, enum: -> { WhopSDK::ReleaseMethod }, nil?: true

        # @!attribute renewal_price
        #   The amount the customer is charged every billing period. Provided as a number in
        #   the specified currency. Eg: 10.43 for $10.43 USD.
        #
        #   @return [Float, nil]
        optional :renewal_price, Float, nil?: true

        # @!attribute visibility
        #   Visibility of a resource
        #
        #   @return [Symbol, WhopSDK::Models::Visibility, nil]
        optional :visibility, enum: -> { WhopSDK::Visibility }, nil?: true

        # @!method initialize(base_currency: nil, billing_period: nil, custom_fields: nil, initial_price: nil, plan_type: nil, release_method: nil, renewal_price: nil, visibility: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ProductCreateParams::PlanOptions} for more details.
        #
        #   Configuration for an automatically generated plan to attach to this product.
        #
        #   @param base_currency [Symbol, WhopSDK::Models::Currency, nil] The available currencies on the platform
        #
        #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
        #
        #   @param custom_fields [Array<WhopSDK::Models::ProductCreateParams::PlanOptions::CustomField>, nil] An array of custom field objects.
        #
        #   @param initial_price [Float, nil] An additional amount charged upon first purchase. Provided as a number in the sp
        #
        #   @param plan_type [Symbol, WhopSDK::Models::PlanType, nil] The type of plan that can be attached to a product
        #
        #   @param release_method [Symbol, WhopSDK::Models::ReleaseMethod, nil] The methods of how a plan can be released.
        #
        #   @param renewal_price [Float, nil] The amount the customer is charged every billing period. Provided as a number in
        #
        #   @param visibility [Symbol, WhopSDK::Models::Visibility, nil] Visibility of a resource

        class CustomField < WhopSDK::Internal::Type::BaseModel
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
          optional :required, WhopSDK::Internal::Type::Boolean, nil?: true

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
      end

      class ProductHighlight < WhopSDK::Internal::Type::BaseModel
        # @!attribute content
        #   Text to display to describe the product highlight (max length 250 for
        #   qualification or benefits, 170 for who this is for, 140 for pricing features).
        #
        #   @return [String]
        required :content, String

        # @!attribute highlight_type
        #   The type of this highlight.
        #
        #   @return [Symbol, WhopSDK::Models::ProductCreateParams::ProductHighlight::HighlightType]
        required :highlight_type, enum: -> { WhopSDK::ProductCreateParams::ProductHighlight::HighlightType }

        # @!attribute title
        #   The title of the product highlight, if applicable.
        #
        #   @return [String, nil]
        optional :title, String, nil?: true

        # @!method initialize(content:, highlight_type:, title: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::ProductCreateParams::ProductHighlight} for more details.
        #
        #   Input for creating a product highlight
        #
        #   @param content [String] Text to display to describe the product highlight (max length 250 for qualificat
        #
        #   @param highlight_type [Symbol, WhopSDK::Models::ProductCreateParams::ProductHighlight::HighlightType] The type of this highlight.
        #
        #   @param title [String, nil] The title of the product highlight, if applicable.

        # The type of this highlight.
        #
        # @see WhopSDK::Models::ProductCreateParams::ProductHighlight#highlight_type
        module HighlightType
          extend WhopSDK::Internal::Type::Enum

          QUALIFICATION = :qualification
          BENEFIT = :benefit
          WHO_THIS_IS_FOR = :who_this_is_for
          PRICING_FEATURE = :pricing_feature

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
