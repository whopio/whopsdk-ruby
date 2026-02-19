# typed: strong

module WhopSDK
  module Models
    class ProductCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ProductCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier of the company to create this product for.
      sig { returns(String) }
      attr_accessor :company_id

      # The display name of the product. Maximum 40 characters.
      sig { returns(String) }
      attr_accessor :title

      # The different business types a company can be.
      sig { returns(T.nilable(WhopSDK::BusinessTypes::OrSymbol)) }
      attr_accessor :business_type

      # Whether the checkout flow collects a shipping address from the customer.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :collect_shipping_address

      # The different types of custom CTAs that can be selected.
      sig { returns(T.nilable(WhopSDK::CustomCta::OrSymbol)) }
      attr_accessor :custom_cta

      # A URL that the call-to-action button links to instead of the default checkout
      # flow.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_cta_url

      # A custom text label that appears on the customer's bank statement. Must be 5-22
      # characters, contain at least one letter, and not contain <, >, \, ', or "
      # characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :custom_statement_descriptor

      # A written description of the product displayed on its product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The unique identifiers of experiences to connect to this product.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :experience_ids

      # The commission rate as a percentage that affiliates earn through the global
      # affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :global_affiliate_percentage

      # The different statuses of the global affiliate program for a product.
      sig { returns(T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol)) }
      attr_accessor :global_affiliate_status

      # A short marketing headline displayed prominently on the product page.
      sig { returns(T.nilable(String)) }
      attr_accessor :headline

      # The different industry groups a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryGroups::OrSymbol)) }
      attr_accessor :industry_group

      # The different industry types a company can be in.
      sig { returns(T.nilable(WhopSDK::IndustryTypes::OrSymbol)) }
      attr_accessor :industry_type

      # The commission rate as a percentage that members earn through the member
      # affiliate program.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_affiliate_percentage

      # The different statuses of the global affiliate program for a product.
      sig { returns(T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol)) }
      attr_accessor :member_affiliate_status

      # Configuration for an automatically generated plan to attach to this product.
      sig { returns(T.nilable(WhopSDK::ProductCreateParams::PlanOptions)) }
      attr_reader :plan_options

      sig do
        params(
          plan_options:
            T.nilable(WhopSDK::ProductCreateParams::PlanOptions::OrHash)
        ).void
      end
      attr_writer :plan_options

      # The unique identifier of the tax classification code to apply to this product.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_tax_code_id

      # A URL to redirect the customer to after completing a purchase.
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_purchase_url

      # The URL slug for the product's public link.
      sig { returns(T.nilable(String)) }
      attr_accessor :route

      # Visibility of a resource
      sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          company_id: String,
          title: String,
          business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
          collect_shipping_address: T.nilable(T::Boolean),
          custom_cta: T.nilable(WhopSDK::CustomCta::OrSymbol),
          custom_cta_url: T.nilable(String),
          custom_statement_descriptor: T.nilable(String),
          description: T.nilable(String),
          experience_ids: T.nilable(T::Array[String]),
          global_affiliate_percentage: T.nilable(Float),
          global_affiliate_status:
            T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
          headline: T.nilable(String),
          industry_group: T.nilable(WhopSDK::IndustryGroups::OrSymbol),
          industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
          member_affiliate_percentage: T.nilable(Float),
          member_affiliate_status:
            T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
          plan_options:
            T.nilable(WhopSDK::ProductCreateParams::PlanOptions::OrHash),
          product_tax_code_id: T.nilable(String),
          redirect_purchase_url: T.nilable(String),
          route: T.nilable(String),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier of the company to create this product for.
        company_id:,
        # The display name of the product. Maximum 40 characters.
        title:,
        # The different business types a company can be.
        business_type: nil,
        # Whether the checkout flow collects a shipping address from the customer.
        collect_shipping_address: nil,
        # The different types of custom CTAs that can be selected.
        custom_cta: nil,
        # A URL that the call-to-action button links to instead of the default checkout
        # flow.
        custom_cta_url: nil,
        # A custom text label that appears on the customer's bank statement. Must be 5-22
        # characters, contain at least one letter, and not contain <, >, \, ', or "
        # characters.
        custom_statement_descriptor: nil,
        # A written description of the product displayed on its product page.
        description: nil,
        # The unique identifiers of experiences to connect to this product.
        experience_ids: nil,
        # The commission rate as a percentage that affiliates earn through the global
        # affiliate program.
        global_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for a product.
        global_affiliate_status: nil,
        # A short marketing headline displayed prominently on the product page.
        headline: nil,
        # The different industry groups a company can be in.
        industry_group: nil,
        # The different industry types a company can be in.
        industry_type: nil,
        # The commission rate as a percentage that members earn through the member
        # affiliate program.
        member_affiliate_percentage: nil,
        # The different statuses of the global affiliate program for a product.
        member_affiliate_status: nil,
        # Configuration for an automatically generated plan to attach to this product.
        plan_options: nil,
        # The unique identifier of the tax classification code to apply to this product.
        product_tax_code_id: nil,
        # A URL to redirect the customer to after completing a purchase.
        redirect_purchase_url: nil,
        # The URL slug for the product's public link.
        route: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            title: String,
            business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
            collect_shipping_address: T.nilable(T::Boolean),
            custom_cta: T.nilable(WhopSDK::CustomCta::OrSymbol),
            custom_cta_url: T.nilable(String),
            custom_statement_descriptor: T.nilable(String),
            description: T.nilable(String),
            experience_ids: T.nilable(T::Array[String]),
            global_affiliate_percentage: T.nilable(Float),
            global_affiliate_status:
              T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
            headline: T.nilable(String),
            industry_group: T.nilable(WhopSDK::IndustryGroups::OrSymbol),
            industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
            member_affiliate_percentage: T.nilable(Float),
            member_affiliate_status:
              T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
            plan_options: T.nilable(WhopSDK::ProductCreateParams::PlanOptions),
            product_tax_code_id: T.nilable(String),
            redirect_purchase_url: T.nilable(String),
            route: T.nilable(String),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class PlanOptions < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::ProductCreateParams::PlanOptions,
              WhopSDK::Internal::AnyHash
            )
          end

        # The available currencies on the platform
        sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
        attr_accessor :base_currency

        # The interval at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # An array of custom field objects.
        sig do
          returns(
            T.nilable(
              T::Array[WhopSDK::ProductCreateParams::PlanOptions::CustomField]
            )
          )
        end
        attr_accessor :custom_fields

        # An additional amount charged upon first purchase. Provided as a number in the
        # specified currency. Eg: 10.43 for $10.43 USD.
        sig { returns(T.nilable(Float)) }
        attr_accessor :initial_price

        # The type of plan that can be attached to a product
        sig { returns(T.nilable(WhopSDK::PlanType::OrSymbol)) }
        attr_accessor :plan_type

        # The methods of how a plan can be released.
        sig { returns(T.nilable(WhopSDK::ReleaseMethod::OrSymbol)) }
        attr_accessor :release_method

        # The amount the customer is charged every billing period. Provided as a number in
        # the specified currency. Eg: 10.43 for $10.43 USD.
        sig { returns(T.nilable(Float)) }
        attr_accessor :renewal_price

        # Visibility of a resource
        sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
        attr_accessor :visibility

        # Configuration for an automatically generated plan to attach to this product.
        sig do
          params(
            base_currency: T.nilable(WhopSDK::Currency::OrSymbol),
            billing_period: T.nilable(Integer),
            custom_fields:
              T.nilable(
                T::Array[
                  WhopSDK::ProductCreateParams::PlanOptions::CustomField::OrHash
                ]
              ),
            initial_price: T.nilable(Float),
            plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
            release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
            renewal_price: T.nilable(Float),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # The available currencies on the platform
          base_currency: nil,
          # The interval at which the plan charges (renewal plans).
          billing_period: nil,
          # An array of custom field objects.
          custom_fields: nil,
          # An additional amount charged upon first purchase. Provided as a number in the
          # specified currency. Eg: 10.43 for $10.43 USD.
          initial_price: nil,
          # The type of plan that can be attached to a product
          plan_type: nil,
          # The methods of how a plan can be released.
          release_method: nil,
          # The amount the customer is charged every billing period. Provided as a number in
          # the specified currency. Eg: 10.43 for $10.43 USD.
          renewal_price: nil,
          # Visibility of a resource
          visibility: nil
        )
        end

        sig do
          override.returns(
            {
              base_currency: T.nilable(WhopSDK::Currency::OrSymbol),
              billing_period: T.nilable(Integer),
              custom_fields:
                T.nilable(
                  T::Array[
                    WhopSDK::ProductCreateParams::PlanOptions::CustomField
                  ]
                ),
              initial_price: T.nilable(Float),
              plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
              release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
              renewal_price: T.nilable(Float),
              visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
            }
          )
        end
        def to_hash
        end

        class CustomField < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ProductCreateParams::PlanOptions::CustomField,
                WhopSDK::Internal::AnyHash
              )
            end

          # The type of the custom field.
          sig { returns(Symbol) }
          attr_accessor :field_type

          # The name of the custom field.
          sig { returns(String) }
          attr_accessor :name

          # The ID of the custom field (if being updated)
          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # The order of the field.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :order

          # The placeholder value of the field.
          sig { returns(T.nilable(String)) }
          attr_accessor :placeholder

          # Whether or not the field is required.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :required

          sig do
            params(
              name: String,
              id: T.nilable(String),
              order: T.nilable(Integer),
              placeholder: T.nilable(String),
              required: T.nilable(T::Boolean),
              field_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The name of the custom field.
            name:,
            # The ID of the custom field (if being updated)
            id: nil,
            # The order of the field.
            order: nil,
            # The placeholder value of the field.
            placeholder: nil,
            # Whether or not the field is required.
            required: nil,
            # The type of the custom field.
            field_type: :text
          )
          end

          sig do
            override.returns(
              {
                field_type: Symbol,
                name: String,
                id: T.nilable(String),
                order: T.nilable(Integer),
                placeholder: T.nilable(String),
                required: T.nilable(T::Boolean)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
