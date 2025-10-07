# typed: strong

module Whopsdk
  module Models
    class InvoiceCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::InvoiceCreateParams, Whopsdk::Internal::AnyHash)
        end

      # The method of collection for an invoice.
      sig { returns(T.nilable(Whopsdk::CollectionMethod::OrSymbol)) }
      attr_accessor :collection_method

      # The company ID to create this invoice for.
      sig { returns(String) }
      attr_accessor :company_id

      # The date the invoice is due, if applicable.
      sig { returns(Integer) }
      attr_accessor :due_date

      # The properties of the plan to create for this invoice.
      sig { returns(Whopsdk::InvoiceCreateParams::Plan) }
      attr_reader :plan

      sig { params(plan: Whopsdk::InvoiceCreateParams::Plan::OrHash).void }
      attr_writer :plan

      # Whether or not to charge the customer a buyer fee.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :charge_buyer_fee

      # The name of the customer to create this invoice for. This is required if you
      # want to create an invoice for a customer who does not have a member of your
      # company yet.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      # The email address to create this invoice for. This is required if you want to
      # create an invoice for a user who does not have a member of your company yet.
      sig { returns(T.nilable(String)) }
      attr_accessor :email_address

      # The member ID to create this invoice for. Include this if you want to create an
      # invoice for an existing member. If you do not have a member ID, you must provide
      # an email_address and customer_name.
      sig { returns(T.nilable(String)) }
      attr_accessor :member_id

      # The payment token ID to use for this invoice. If using charge_automatically, you
      # must provide a payment_token.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_token_id

      # The properties of the access pass to create for this invoice. Include this if
      # you want to create an invoice for a new product.
      sig { returns(T.nilable(Whopsdk::InvoiceCreateParams::Product)) }
      attr_reader :product

      sig do
        params(
          product: T.nilable(Whopsdk::InvoiceCreateParams::Product::OrHash)
        ).void
      end
      attr_writer :product

      # The access pass ID to create this invoice for. Include this if you want to
      # create an invoice for an existing product.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_id

      sig do
        params(
          collection_method: T.nilable(Whopsdk::CollectionMethod::OrSymbol),
          company_id: String,
          due_date: Integer,
          plan: Whopsdk::InvoiceCreateParams::Plan::OrHash,
          charge_buyer_fee: T.nilable(T::Boolean),
          customer_name: T.nilable(String),
          email_address: T.nilable(String),
          member_id: T.nilable(String),
          payment_token_id: T.nilable(String),
          product: T.nilable(Whopsdk::InvoiceCreateParams::Product::OrHash),
          product_id: T.nilable(String),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The method of collection for an invoice.
        collection_method:,
        # The company ID to create this invoice for.
        company_id:,
        # The date the invoice is due, if applicable.
        due_date:,
        # The properties of the plan to create for this invoice.
        plan:,
        # Whether or not to charge the customer a buyer fee.
        charge_buyer_fee: nil,
        # The name of the customer to create this invoice for. This is required if you
        # want to create an invoice for a customer who does not have a member of your
        # company yet.
        customer_name: nil,
        # The email address to create this invoice for. This is required if you want to
        # create an invoice for a user who does not have a member of your company yet.
        email_address: nil,
        # The member ID to create this invoice for. Include this if you want to create an
        # invoice for an existing member. If you do not have a member ID, you must provide
        # an email_address and customer_name.
        member_id: nil,
        # The payment token ID to use for this invoice. If using charge_automatically, you
        # must provide a payment_token.
        payment_token_id: nil,
        # The properties of the access pass to create for this invoice. Include this if
        # you want to create an invoice for a new product.
        product: nil,
        # The access pass ID to create this invoice for. Include this if you want to
        # create an invoice for an existing product.
        product_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            collection_method: T.nilable(Whopsdk::CollectionMethod::OrSymbol),
            company_id: String,
            due_date: Integer,
            plan: Whopsdk::InvoiceCreateParams::Plan,
            charge_buyer_fee: T.nilable(T::Boolean),
            customer_name: T.nilable(String),
            email_address: T.nilable(String),
            member_id: T.nilable(String),
            payment_token_id: T.nilable(String),
            product: T.nilable(Whopsdk::InvoiceCreateParams::Product),
            product_id: T.nilable(String),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Plan < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::InvoiceCreateParams::Plan,
              Whopsdk::Internal::AnyHash
            )
          end

        # Whether or not ACH payments are accepted
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :ach_payments

        # The available currencies on the platform
        sig { returns(T.nilable(Whopsdk::Currency::OrSymbol)) }
        attr_accessor :base_currency

        # The interval at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # Whether or not card payments are accepted
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :card_payments

        # Marks whether coinbase commerce payments are/aren't accepted.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :coinbase_commerce_accepted

        # An array of custom field objects.
        sig do
          returns(
            T.nilable(T::Array[Whopsdk::InvoiceCreateParams::Plan::CustomField])
          )
        end
        attr_accessor :custom_fields

        # The description of the plan.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # The interval at which the plan charges (expiration plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # An additional amount charged upon first purchase.
        sig { returns(T.nilable(Float)) }
        attr_accessor :initial_price

        # A personal description or notes section for the business.
        sig { returns(T.nilable(String)) }
        attr_accessor :internal_notes

        # Whether or not to offer a discount to cancel a subscription.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :offer_cancel_discount

        # Marks whether paypal payments are/aren't accepted.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :paypal_accepted

        # The type of plan that can be attached to an access pass
        sig { returns(T.nilable(Whopsdk::PlanType::OrSymbol)) }
        attr_accessor :plan_type

        # Marks whether platform balance payments are/aren't accepted.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :platform_balance_accepted

        # The URL to redirect the customer to after purchase.
        sig { returns(T.nilable(String)) }
        attr_accessor :redirect_url

        # The methods of how a plan can be released.
        sig { returns(T.nilable(Whopsdk::ReleaseMethod::OrSymbol)) }
        attr_accessor :release_method

        # The amount the customer is charged every billing period.
        sig { returns(T.nilable(Float)) }
        attr_accessor :renewal_price

        # The number of payments required before pausing the subscription.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :split_pay_required_payments

        # Marks whether payments using splitit, a payment processor, are/aren't accepted
        # for the plan.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :splitit_accepted

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
        sig { returns(T.nilable(Whopsdk::Visibility::OrSymbol)) }
        attr_accessor :visibility

        # The properties of the plan to create for this invoice.
        sig do
          params(
            ach_payments: T.nilable(T::Boolean),
            base_currency: T.nilable(Whopsdk::Currency::OrSymbol),
            billing_period: T.nilable(Integer),
            card_payments: T.nilable(T::Boolean),
            coinbase_commerce_accepted: T.nilable(T::Boolean),
            custom_fields:
              T.nilable(
                T::Array[
                  Whopsdk::InvoiceCreateParams::Plan::CustomField::OrHash
                ]
              ),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            offer_cancel_discount: T.nilable(T::Boolean),
            paypal_accepted: T.nilable(T::Boolean),
            plan_type: T.nilable(Whopsdk::PlanType::OrSymbol),
            platform_balance_accepted: T.nilable(T::Boolean),
            redirect_url: T.nilable(String),
            release_method: T.nilable(Whopsdk::ReleaseMethod::OrSymbol),
            renewal_price: T.nilable(Float),
            split_pay_required_payments: T.nilable(Integer),
            splitit_accepted: T.nilable(T::Boolean),
            stock: T.nilable(Integer),
            trial_period_days: T.nilable(Integer),
            unlimited_stock: T.nilable(T::Boolean),
            visibility: T.nilable(Whopsdk::Visibility::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether or not ACH payments are accepted
          ach_payments: nil,
          # The available currencies on the platform
          base_currency: nil,
          # The interval at which the plan charges (renewal plans).
          billing_period: nil,
          # Whether or not card payments are accepted
          card_payments: nil,
          # Marks whether coinbase commerce payments are/aren't accepted.
          coinbase_commerce_accepted: nil,
          # An array of custom field objects.
          custom_fields: nil,
          # The description of the plan.
          description: nil,
          # The interval at which the plan charges (expiration plans).
          expiration_days: nil,
          # An additional amount charged upon first purchase.
          initial_price: nil,
          # A personal description or notes section for the business.
          internal_notes: nil,
          # Whether or not to offer a discount to cancel a subscription.
          offer_cancel_discount: nil,
          # Marks whether paypal payments are/aren't accepted.
          paypal_accepted: nil,
          # The type of plan that can be attached to an access pass
          plan_type: nil,
          # Marks whether platform balance payments are/aren't accepted.
          platform_balance_accepted: nil,
          # The URL to redirect the customer to after purchase.
          redirect_url: nil,
          # The methods of how a plan can be released.
          release_method: nil,
          # The amount the customer is charged every billing period.
          renewal_price: nil,
          # The number of payments required before pausing the subscription.
          split_pay_required_payments: nil,
          # Marks whether payments using splitit, a payment processor, are/aren't accepted
          # for the plan.
          splitit_accepted: nil,
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
              ach_payments: T.nilable(T::Boolean),
              base_currency: T.nilable(Whopsdk::Currency::OrSymbol),
              billing_period: T.nilable(Integer),
              card_payments: T.nilable(T::Boolean),
              coinbase_commerce_accepted: T.nilable(T::Boolean),
              custom_fields:
                T.nilable(
                  T::Array[Whopsdk::InvoiceCreateParams::Plan::CustomField]
                ),
              description: T.nilable(String),
              expiration_days: T.nilable(Integer),
              initial_price: T.nilable(Float),
              internal_notes: T.nilable(String),
              offer_cancel_discount: T.nilable(T::Boolean),
              paypal_accepted: T.nilable(T::Boolean),
              plan_type: T.nilable(Whopsdk::PlanType::OrSymbol),
              platform_balance_accepted: T.nilable(T::Boolean),
              redirect_url: T.nilable(String),
              release_method: T.nilable(Whopsdk::ReleaseMethod::OrSymbol),
              renewal_price: T.nilable(Float),
              split_pay_required_payments: T.nilable(Integer),
              splitit_accepted: T.nilable(T::Boolean),
              stock: T.nilable(Integer),
              trial_period_days: T.nilable(Integer),
              unlimited_stock: T.nilable(T::Boolean),
              visibility: T.nilable(Whopsdk::Visibility::OrSymbol)
            }
          )
        end
        def to_hash
        end

        class CustomField < Whopsdk::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Whopsdk::InvoiceCreateParams::Plan::CustomField,
                Whopsdk::Internal::AnyHash
              )
            end

          # The type of the custom field.
          sig do
            returns(
              T.nilable(
                Whopsdk::InvoiceCreateParams::Plan::CustomField::FieldType::OrSymbol
              )
            )
          end
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
              field_type:
                T.nilable(
                  Whopsdk::InvoiceCreateParams::Plan::CustomField::FieldType::OrSymbol
                ),
              name: String,
              id: T.nilable(String),
              order: T.nilable(Integer),
              placeholder: T.nilable(String),
              required: T.nilable(T::Boolean)
            ).returns(T.attached_class)
          end
          def self.new(
            # The type of the custom field.
            field_type:,
            # The name of the custom field.
            name:,
            # The ID of the custom field (if being updated)
            id: nil,
            # The order of the field.
            order: nil,
            # The placeholder value of the field.
            placeholder: nil,
            # Whether or not the field is required.
            required: nil
          )
          end

          sig do
            override.returns(
              {
                field_type:
                  T.nilable(
                    Whopsdk::InvoiceCreateParams::Plan::CustomField::FieldType::OrSymbol
                  ),
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

          # The type of the custom field.
          module FieldType
            extend Whopsdk::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Whopsdk::InvoiceCreateParams::Plan::CustomField::FieldType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TEXT =
              T.let(
                :text,
                Whopsdk::InvoiceCreateParams::Plan::CustomField::FieldType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Whopsdk::InvoiceCreateParams::Plan::CustomField::FieldType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Product < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::InvoiceCreateParams::Product,
              Whopsdk::Internal::AnyHash
            )
          end

        # The title of the access pass.
        sig { returns(String) }
        attr_accessor :title

        # The ID of the product tax code to apply to this access pass.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_tax_code_id

        # The properties of the access pass to create for this invoice. Include this if
        # you want to create an invoice for a new product.
        sig do
          params(title: String, product_tax_code_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # The title of the access pass.
          title:,
          # The ID of the product tax code to apply to this access pass.
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
