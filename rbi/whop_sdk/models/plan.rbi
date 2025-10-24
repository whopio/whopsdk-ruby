# typed: strong

module WhopSDK
  module Models
    class Plan < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::Plan, WhopSDK::Internal::AnyHash) }

      # The internal ID of the plan.
      sig { returns(String) }
      attr_accessor :id

      # The interval at which the plan charges (renewal plans).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :billing_period

      # Whether or not the plan collects tax.
      sig { returns(T::Boolean) }
      attr_accessor :collect_tax

      # The company for the plan.
      sig { returns(T.nilable(WhopSDK::Plan::Company)) }
      attr_reader :company

      sig { params(company: T.nilable(WhopSDK::Plan::Company::OrHash)).void }
      attr_writer :company

      # When the plan was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The respective currency identifier for the plan.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # The custom fields for the plan.
      sig { returns(T::Array[WhopSDK::Plan::CustomField]) }
      attr_accessor :custom_fields

      # The description of the plan.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The interval at which the plan charges (expiration plans).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expiration_days

      # The price a person has to pay for a plan on the initial purchase.
      sig { returns(Float) }
      attr_accessor :initial_price

      # A personal description or notes section for the business.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # The invoice associated with this plan.
      sig { returns(T.nilable(WhopSDK::Plan::Invoice)) }
      attr_reader :invoice

      sig { params(invoice: T.nilable(WhopSDK::Plan::Invoice::OrHash)).void }
      attr_writer :invoice

      # The number of members for the plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :member_count

      # Indicates if the plan is a one time payment or recurring.
      sig { returns(WhopSDK::PlanType::TaggedSymbol) }
      attr_accessor :plan_type

      # The access pass for the plan.
      sig { returns(T.nilable(WhopSDK::Plan::Product)) }
      attr_reader :product

      sig { params(product: T.nilable(WhopSDK::Plan::Product::OrHash)).void }
      attr_writer :product

      # The direct link to purchase the product.
      sig { returns(String) }
      attr_accessor :purchase_url

      # This is the release method the business uses to sell this plan.
      sig { returns(WhopSDK::ReleaseMethod::TaggedSymbol) }
      attr_accessor :release_method

      # The price a person has to pay for a plan on the renewal purchase.
      sig { returns(Float) }
      attr_accessor :renewal_price

      # An un-used field - do not use.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :stock

      # The tax type for the plan.
      sig { returns(WhopSDK::TaxType::TaggedSymbol) }
      attr_accessor :tax_type

      # The title of the plan. This will be visible on the product page to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The number of free trial days added before a renewal plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      # Limits/doesn't limit the number of units available for purchase.
      sig { returns(T::Boolean) }
      attr_accessor :unlimited_stock

      # When the plan was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Shows or hides the plan from public/business view.
      sig { returns(WhopSDK::Visibility::TaggedSymbol) }
      attr_accessor :visibility

      # An object representing a (sanitized) plan of an access pass.
      sig do
        params(
          id: String,
          billing_period: T.nilable(Integer),
          collect_tax: T::Boolean,
          company: T.nilable(WhopSDK::Plan::Company::OrHash),
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          custom_fields: T::Array[WhopSDK::Plan::CustomField::OrHash],
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          initial_price: Float,
          internal_notes: T.nilable(String),
          invoice: T.nilable(WhopSDK::Plan::Invoice::OrHash),
          member_count: T.nilable(Integer),
          plan_type: WhopSDK::PlanType::OrSymbol,
          product: T.nilable(WhopSDK::Plan::Product::OrHash),
          purchase_url: String,
          release_method: WhopSDK::ReleaseMethod::OrSymbol,
          renewal_price: Float,
          stock: T.nilable(Integer),
          tax_type: WhopSDK::TaxType::OrSymbol,
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T::Boolean,
          updated_at: Time,
          visibility: WhopSDK::Visibility::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The internal ID of the plan.
        id:,
        # The interval at which the plan charges (renewal plans).
        billing_period:,
        # Whether or not the plan collects tax.
        collect_tax:,
        # The company for the plan.
        company:,
        # When the plan was created.
        created_at:,
        # The respective currency identifier for the plan.
        currency:,
        # The custom fields for the plan.
        custom_fields:,
        # The description of the plan.
        description:,
        # The interval at which the plan charges (expiration plans).
        expiration_days:,
        # The price a person has to pay for a plan on the initial purchase.
        initial_price:,
        # A personal description or notes section for the business.
        internal_notes:,
        # The invoice associated with this plan.
        invoice:,
        # The number of members for the plan.
        member_count:,
        # Indicates if the plan is a one time payment or recurring.
        plan_type:,
        # The access pass for the plan.
        product:,
        # The direct link to purchase the product.
        purchase_url:,
        # This is the release method the business uses to sell this plan.
        release_method:,
        # The price a person has to pay for a plan on the renewal purchase.
        renewal_price:,
        # An un-used field - do not use.
        stock:,
        # The tax type for the plan.
        tax_type:,
        # The title of the plan. This will be visible on the product page to customers.
        title:,
        # The number of free trial days added before a renewal plan.
        trial_period_days:,
        # Limits/doesn't limit the number of units available for purchase.
        unlimited_stock:,
        # When the plan was last updated.
        updated_at:,
        # Shows or hides the plan from public/business view.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            billing_period: T.nilable(Integer),
            collect_tax: T::Boolean,
            company: T.nilable(WhopSDK::Plan::Company),
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            custom_fields: T::Array[WhopSDK::Plan::CustomField],
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            initial_price: Float,
            internal_notes: T.nilable(String),
            invoice: T.nilable(WhopSDK::Plan::Invoice),
            member_count: T.nilable(Integer),
            plan_type: WhopSDK::PlanType::TaggedSymbol,
            product: T.nilable(WhopSDK::Plan::Product),
            purchase_url: String,
            release_method: WhopSDK::ReleaseMethod::TaggedSymbol,
            renewal_price: Float,
            stock: T.nilable(Integer),
            tax_type: WhopSDK::TaxType::TaggedSymbol,
            title: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            unlimited_stock: T::Boolean,
            updated_at: Time,
            visibility: WhopSDK::Visibility::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Plan::Company, WhopSDK::Internal::AnyHash)
          end

        # The ID (tag) of the company.
        sig { returns(String) }
        attr_accessor :id

        # The title of the company.
        sig { returns(String) }
        attr_accessor :title

        # The company for the plan.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The ID (tag) of the company.
          id:,
          # The title of the company.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      class CustomField < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Plan::CustomField, WhopSDK::Internal::AnyHash)
          end

        # The internal ID of the given custom field
        sig { returns(String) }
        attr_accessor :id

        # What type of input field to use.
        sig { returns(Symbol) }
        attr_accessor :field_type

        # The title/header of the custom field.
        sig { returns(String) }
        attr_accessor :name

        # How the custom field should be ordered when rendered on the checkout page.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :order

        # An example response displayed in the input field.
        sig { returns(T.nilable(String)) }
        attr_accessor :placeholder

        # Whether or not the custom field is required.
        sig { returns(T::Boolean) }
        attr_accessor :required

        # An object representing a custom field for a plan.
        sig do
          params(
            id: String,
            name: String,
            order: T.nilable(Integer),
            placeholder: T.nilable(String),
            required: T::Boolean,
            field_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the given custom field
          id:,
          # The title/header of the custom field.
          name:,
          # How the custom field should be ordered when rendered on the checkout page.
          order:,
          # An example response displayed in the input field.
          placeholder:,
          # Whether or not the custom field is required.
          required:,
          # What type of input field to use.
          field_type: :text
        )
        end

        sig do
          override.returns(
            {
              id: String,
              field_type: Symbol,
              name: String,
              order: T.nilable(Integer),
              placeholder: T.nilable(String),
              required: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      class Invoice < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Plan::Invoice, WhopSDK::Internal::AnyHash)
          end

        # The ID of the invoice.
        sig { returns(String) }
        attr_accessor :id

        # The invoice associated with this plan.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of the invoice.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Plan::Product, WhopSDK::Internal::AnyHash)
          end

        # The internal ID of the public product.
        sig { returns(String) }
        attr_accessor :id

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The access pass for the plan.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The internal ID of the public product.
          id:,
          # The title of the product. Use for Whop 4.0.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end
    end
  end
end
