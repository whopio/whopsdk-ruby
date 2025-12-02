# typed: strong

module WhopSDK
  module Models
    class InvoiceCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::InvoiceCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The method of collection for this invoice. If using charge_automatically, you
      # must provide a payment_token.
      sig { returns(WhopSDK::CollectionMethod::OrSymbol) }
      attr_accessor :collection_method

      # The company ID to create this invoice for.
      sig { returns(String) }
      attr_accessor :company_id

      # The date the invoice is due, if applicable.
      sig { returns(Time) }
      attr_accessor :due_date

      # The member ID to create this invoice for. Include this if you want to create an
      # invoice for an existing member. If you do not have a member ID, you must provide
      # an email_address and customer_name.
      sig { returns(String) }
      attr_accessor :member_id

      # The properties of the plan to create for this invoice.
      sig { returns(WhopSDK::InvoiceCreateParams::Plan) }
      attr_reader :plan

      sig { params(plan: WhopSDK::InvoiceCreateParams::Plan::OrHash).void }
      attr_writer :plan

      # The properties of the product to create for this invoice. Include this if you
      # want to create an invoice for a new product.
      sig { returns(WhopSDK::InvoiceCreateParams::Product) }
      attr_reader :product

      sig do
        params(product: WhopSDK::InvoiceCreateParams::Product::OrHash).void
      end
      attr_writer :product

      # Whether or not to charge the customer a buyer fee.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :charge_buyer_fee

      # The name of the customer to create this invoice for. This is required if you
      # want to create an invoice for a customer who does not have a member of your
      # company yet.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # The payment method ID to use for this invoice. If using charge_automatically,
      # you must provide a payment_method_id.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # The payment token ID to use for this invoice. If using charge_automatically, you
      # must provide a payment_token.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_token_id

      # The email address to create this invoice for. This is required if you want to
      # create an invoice for a user who does not have a member of your company yet.
      sig { returns(String) }
      attr_accessor :email_address

      # The product ID to create this invoice for. Include this if you want to create an
      # invoice for an existing product.
      sig { returns(String) }
      attr_accessor :product_id

      sig do
        params(
          collection_method: WhopSDK::CollectionMethod::OrSymbol,
          company_id: String,
          due_date: Time,
          member_id: String,
          plan: WhopSDK::InvoiceCreateParams::Plan::OrHash,
          product: WhopSDK::InvoiceCreateParams::Product::OrHash,
          email_address: String,
          product_id: String,
          charge_buyer_fee: T.nilable(T::Boolean),
          customer_name: T.nilable(String),
          payment_method_id: T.nilable(String),
          payment_token_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The method of collection for this invoice. If using charge_automatically, you
        # must provide a payment_token.
        collection_method:,
        # The company ID to create this invoice for.
        company_id:,
        # The date the invoice is due, if applicable.
        due_date:,
        # The member ID to create this invoice for. Include this if you want to create an
        # invoice for an existing member. If you do not have a member ID, you must provide
        # an email_address and customer_name.
        member_id:,
        # The properties of the plan to create for this invoice.
        plan:,
        # The properties of the product to create for this invoice. Include this if you
        # want to create an invoice for a new product.
        product:,
        # The email address to create this invoice for. This is required if you want to
        # create an invoice for a user who does not have a member of your company yet.
        email_address:,
        # The product ID to create this invoice for. Include this if you want to create an
        # invoice for an existing product.
        product_id:,
        # Whether or not to charge the customer a buyer fee.
        charge_buyer_fee: nil,
        # The name of the customer to create this invoice for. This is required if you
        # want to create an invoice for a customer who does not have a member of your
        # company yet.
        customer_name: nil,
        # The payment method ID to use for this invoice. If using charge_automatically,
        # you must provide a payment_method_id.
        payment_method_id: nil,
        # The payment token ID to use for this invoice. If using charge_automatically, you
        # must provide a payment_token.
        payment_token_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            collection_method: WhopSDK::CollectionMethod::OrSymbol,
            company_id: String,
            due_date: Time,
            member_id: String,
            plan: WhopSDK::InvoiceCreateParams::Plan,
            product: WhopSDK::InvoiceCreateParams::Product,
            charge_buyer_fee: T.nilable(T::Boolean),
            customer_name: T.nilable(String),
            payment_method_id: T.nilable(String),
            payment_token_id: T.nilable(String),
            email_address: String,
            product_id: String,
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
              WhopSDK::InvoiceCreateParams::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # The interval at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # An array of custom field objects.
        sig do
          returns(
            T.nilable(T::Array[WhopSDK::InvoiceCreateParams::Plan::CustomField])
          )
        end
        attr_accessor :custom_fields

        # The description of the plan.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The interval at which the plan charges (expiration plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # An additional amount charged upon first purchase. Use only if a one time payment
        # OR you want to charge an additional amount on top of the renewal price. Provided
        # as a number in dollars. Eg: 10.43 for $10.43
        sig { returns(T.nilable(Float)) }
        attr_accessor :initial_price

        # A personal description or notes section for the business.
        sig { returns(T.nilable(String)) }
        attr_accessor :internal_notes

        # The type of plan that can be attached to a product
        sig { returns(T.nilable(WhopSDK::PlanType::OrSymbol)) }
        attr_accessor :plan_type

        # The methods of how a plan can be released.
        sig { returns(T.nilable(WhopSDK::ReleaseMethod::OrSymbol)) }
        attr_accessor :release_method

        # The amount the customer is charged every billing period. Use only if a recurring
        # payment. Provided as a number in dollars. Eg: 10.43 for $10.43
        sig { returns(T.nilable(Float)) }
        attr_accessor :renewal_price

        # The number of units available for purchase.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :stock

        # The number of free trial days added before a renewal plan.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Limits/doesn't limit the number of units available for purchase.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :unlimited_stock

        # Visibility of a resource
        sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
        attr_accessor :visibility

        # The properties of the plan to create for this invoice.
        sig do
          params(
            billing_period: T.nilable(Integer),
            custom_fields:
              T.nilable(
                T::Array[
                  WhopSDK::InvoiceCreateParams::Plan::CustomField::OrHash
                ]
              ),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
            release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
            renewal_price: T.nilable(Float),
            stock: T.nilable(Integer),
            trial_period_days: T.nilable(Integer),
            unlimited_stock: T.nilable(T::Boolean),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # The interval at which the plan charges (renewal plans).
          billing_period: nil,
          # An array of custom field objects.
          custom_fields: nil,
          # The description of the plan.
          description: nil,
          # The interval at which the plan charges (expiration plans).
          expiration_days: nil,
          # An additional amount charged upon first purchase. Use only if a one time payment
          # OR you want to charge an additional amount on top of the renewal price. Provided
          # as a number in dollars. Eg: 10.43 for $10.43
          initial_price: nil,
          # A personal description or notes section for the business.
          internal_notes: nil,
          # The type of plan that can be attached to a product
          plan_type: nil,
          # The methods of how a plan can be released.
          release_method: nil,
          # The amount the customer is charged every billing period. Use only if a recurring
          # payment. Provided as a number in dollars. Eg: 10.43 for $10.43
          renewal_price: nil,
          # The number of units available for purchase.
          stock: nil,
          # The number of free trial days added before a renewal plan.
          trial_period_days: nil,
          # Limits/doesn't limit the number of units available for purchase.
          unlimited_stock: nil,
          # Visibility of a resource
          visibility: nil
        )
        end

        sig do
          override.returns(
            {
              billing_period: T.nilable(Integer),
              custom_fields:
                T.nilable(
                  T::Array[WhopSDK::InvoiceCreateParams::Plan::CustomField]
                ),
              description: T.nilable(String),
              expiration_days: T.nilable(Integer),
              initial_price: T.nilable(Float),
              internal_notes: T.nilable(String),
              plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
              release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
              renewal_price: T.nilable(Float),
              stock: T.nilable(Integer),
              trial_period_days: T.nilable(Integer),
              unlimited_stock: T.nilable(T::Boolean),
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
                WhopSDK::InvoiceCreateParams::Plan::CustomField,
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

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::InvoiceCreateParams::Product,
              WhopSDK::Internal::AnyHash
            )
          end

        # The title of the product.
        sig { returns(String) }
        attr_accessor :title

        # The ID of the product tax code to apply to this product.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_tax_code_id

        # The properties of the product to create for this invoice. Include this if you
        # want to create an invoice for a new product.
        sig do
          params(title: String, product_tax_code_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # The title of the product.
          title:,
          # The ID of the product tax code to apply to this product.
          product_tax_code_id: nil
        )
        end

        sig do
          override.returns(
            { title: String, product_tax_code_id: T.nilable(String) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
