# typed: strong

module WhopSDK
  module Models
    class PaymentCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PaymentCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the company to create the payment for.
      sig { returns(String) }
      attr_accessor :company_id

      # The ID of the member to create the payment for.
      sig { returns(String) }
      attr_accessor :member_id

      # The ID of the payment method to use for the payment. It must be connected to the
      # Member being charged.
      sig { returns(String) }
      attr_accessor :payment_method_id

      # Pass this object to create a new plan for this payment
      sig { returns(WhopSDK::PaymentCreateParams::Plan) }
      attr_reader :plan

      sig { params(plan: WhopSDK::PaymentCreateParams::Plan::OrHash).void }
      attr_writer :plan

      # An ID of an existing plan to use for the payment.
      sig { returns(String) }
      attr_accessor :plan_id

      sig do
        params(
          company_id: String,
          member_id: String,
          payment_method_id: String,
          plan: WhopSDK::PaymentCreateParams::Plan::OrHash,
          plan_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the company to create the payment for.
        company_id:,
        # The ID of the member to create the payment for.
        member_id:,
        # The ID of the payment method to use for the payment. It must be connected to the
        # Member being charged.
        payment_method_id:,
        # Pass this object to create a new plan for this payment
        plan:,
        # An ID of an existing plan to use for the payment.
        plan_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            member_id: String,
            payment_method_id: String,
            plan: WhopSDK::PaymentCreateParams::Plan,
            plan_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PaymentCreateParams::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # The respective currency identifier for the plan.
        sig { returns(WhopSDK::Currency::OrSymbol) }
        attr_accessor :currency

        # The interval at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # The description of the plan.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The interval at which the plan charges (expiration plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # Whether to force the creation of a new plan even if one with the same attributes
        # already exists.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :force_create_new_plan

        # An additional amount charged upon first purchase.
        sig { returns(T.nilable(Float)) }
        attr_accessor :initial_price

        # A personal description or notes section for the business.
        sig { returns(T.nilable(String)) }
        attr_accessor :internal_notes

        # The type of plan that can be attached to a product
        sig { returns(T.nilable(WhopSDK::PlanType::OrSymbol)) }
        attr_accessor :plan_type

        # Pass this object to create a new product for this plan. We will use the product
        # external identifier to find or create an existing product.
        sig { returns(T.nilable(WhopSDK::PaymentCreateParams::Plan::Product)) }
        attr_reader :product

        sig do
          params(
            product:
              T.nilable(WhopSDK::PaymentCreateParams::Plan::Product::OrHash)
          ).void
        end
        attr_writer :product

        # The product the plan is related to. Either this or product is required.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_id

        # The amount the customer is charged every billing period.
        sig { returns(T.nilable(Float)) }
        attr_accessor :renewal_price

        # The title of the plan. This will be visible on the product page to customers.
        sig { returns(T.nilable(String)) }
        attr_accessor :title

        # The number of free trial days added before a renewal plan.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Visibility of a resource
        sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
        attr_accessor :visibility

        # Pass this object to create a new plan for this payment
        sig do
          params(
            currency: WhopSDK::Currency::OrSymbol,
            billing_period: T.nilable(Integer),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            force_create_new_plan: T.nilable(T::Boolean),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
            product:
              T.nilable(WhopSDK::PaymentCreateParams::Plan::Product::OrHash),
            product_id: T.nilable(String),
            renewal_price: T.nilable(Float),
            title: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # The respective currency identifier for the plan.
          currency:,
          # The interval at which the plan charges (renewal plans).
          billing_period: nil,
          # The description of the plan.
          description: nil,
          # The interval at which the plan charges (expiration plans).
          expiration_days: nil,
          # Whether to force the creation of a new plan even if one with the same attributes
          # already exists.
          force_create_new_plan: nil,
          # An additional amount charged upon first purchase.
          initial_price: nil,
          # A personal description or notes section for the business.
          internal_notes: nil,
          # The type of plan that can be attached to a product
          plan_type: nil,
          # Pass this object to create a new product for this plan. We will use the product
          # external identifier to find or create an existing product.
          product: nil,
          # The product the plan is related to. Either this or product is required.
          product_id: nil,
          # The amount the customer is charged every billing period.
          renewal_price: nil,
          # The title of the plan. This will be visible on the product page to customers.
          title: nil,
          # The number of free trial days added before a renewal plan.
          trial_period_days: nil,
          # Visibility of a resource
          visibility: nil
        )
        end

        sig do
          override.returns(
            {
              currency: WhopSDK::Currency::OrSymbol,
              billing_period: T.nilable(Integer),
              description: T.nilable(String),
              expiration_days: T.nilable(Integer),
              force_create_new_plan: T.nilable(T::Boolean),
              initial_price: T.nilable(Float),
              internal_notes: T.nilable(String),
              plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
              product: T.nilable(WhopSDK::PaymentCreateParams::Plan::Product),
              product_id: T.nilable(String),
              renewal_price: T.nilable(Float),
              title: T.nilable(String),
              trial_period_days: T.nilable(Integer),
              visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
            }
          )
        end
        def to_hash
        end

        class Product < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PaymentCreateParams::Plan::Product,
                WhopSDK::Internal::AnyHash
              )
            end

          # A unique ID used to find or create a product. When provided during creation, we
          # will look for an existing product with this external identifier — if found, it
          # will be updated; otherwise, a new product will be created.
          sig { returns(String) }
          attr_accessor :external_identifier

          # The title of the product.
          sig { returns(String) }
          attr_accessor :title

          # The different business types a company can be.
          sig { returns(T.nilable(WhopSDK::BusinessTypes::OrSymbol)) }
          attr_accessor :business_type

          # Whether or not to collect shipping information at checkout from the customer.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :collect_shipping_address

          # The custom statement descriptor for the product i.e. WHOP\*SPORTS, must be
          # between 5 and 22 characters, contain at least one letter, and not contain any of
          # the following characters: <, >, \, ', "
          sig { returns(T.nilable(String)) }
          attr_accessor :custom_statement_descriptor

          # A written description of the product.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # The percentage of the revenue that goes to the global affiliate program.
          sig { returns(T.nilable(Float)) }
          attr_accessor :global_affiliate_percentage

          # The different statuses of the global affiliate program for a product.
          sig { returns(T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol)) }
          attr_accessor :global_affiliate_status

          # The headline of the product.
          sig { returns(T.nilable(String)) }
          attr_accessor :headline

          # The different industry types a company can be in.
          sig { returns(T.nilable(WhopSDK::IndustryTypes::OrSymbol)) }
          attr_accessor :industry_type

          # The ID of the product tax code to apply to this product.
          sig { returns(T.nilable(String)) }
          attr_accessor :product_tax_code_id

          # The URL to redirect the customer to after a purchase.
          sig { returns(T.nilable(String)) }
          attr_accessor :redirect_purchase_url

          # The route of the product.
          sig { returns(T.nilable(String)) }
          attr_accessor :route

          # Visibility of a resource
          sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
          attr_accessor :visibility

          # Pass this object to create a new product for this plan. We will use the product
          # external identifier to find or create an existing product.
          sig do
            params(
              external_identifier: String,
              title: String,
              business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
              collect_shipping_address: T.nilable(T::Boolean),
              custom_statement_descriptor: T.nilable(String),
              description: T.nilable(String),
              global_affiliate_percentage: T.nilable(Float),
              global_affiliate_status:
                T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
              headline: T.nilable(String),
              industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
              product_tax_code_id: T.nilable(String),
              redirect_purchase_url: T.nilable(String),
              route: T.nilable(String),
              visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
            ).returns(T.attached_class)
          end
          def self.new(
            # A unique ID used to find or create a product. When provided during creation, we
            # will look for an existing product with this external identifier — if found, it
            # will be updated; otherwise, a new product will be created.
            external_identifier:,
            # The title of the product.
            title:,
            # The different business types a company can be.
            business_type: nil,
            # Whether or not to collect shipping information at checkout from the customer.
            collect_shipping_address: nil,
            # The custom statement descriptor for the product i.e. WHOP\*SPORTS, must be
            # between 5 and 22 characters, contain at least one letter, and not contain any of
            # the following characters: <, >, \, ', "
            custom_statement_descriptor: nil,
            # A written description of the product.
            description: nil,
            # The percentage of the revenue that goes to the global affiliate program.
            global_affiliate_percentage: nil,
            # The different statuses of the global affiliate program for a product.
            global_affiliate_status: nil,
            # The headline of the product.
            headline: nil,
            # The different industry types a company can be in.
            industry_type: nil,
            # The ID of the product tax code to apply to this product.
            product_tax_code_id: nil,
            # The URL to redirect the customer to after a purchase.
            redirect_purchase_url: nil,
            # The route of the product.
            route: nil,
            # Visibility of a resource
            visibility: nil
          )
          end

          sig do
            override.returns(
              {
                external_identifier: String,
                title: String,
                business_type: T.nilable(WhopSDK::BusinessTypes::OrSymbol),
                collect_shipping_address: T.nilable(T::Boolean),
                custom_statement_descriptor: T.nilable(String),
                description: T.nilable(String),
                global_affiliate_percentage: T.nilable(Float),
                global_affiliate_status:
                  T.nilable(WhopSDK::GlobalAffiliateStatus::OrSymbol),
                headline: T.nilable(String),
                industry_type: T.nilable(WhopSDK::IndustryTypes::OrSymbol),
                product_tax_code_id: T.nilable(String),
                redirect_purchase_url: T.nilable(String),
                route: T.nilable(String),
                visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
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
