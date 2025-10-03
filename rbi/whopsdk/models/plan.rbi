# typed: strong

module Whopsdk
  module Models
    class Plan < Whopsdk::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Whopsdk::Plan, Whopsdk::Internal::AnyHash) }

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
      sig { returns(T.nilable(Whopsdk::Plan::Company)) }
      attr_reader :company

      sig { params(company: T.nilable(Whopsdk::Plan::Company::OrHash)).void }
      attr_writer :company

      # When the plan was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The available currencies on the platform
      sig { returns(T.nilable(Whopsdk::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # The custom fields for the plan.
      sig { returns(T::Array[Whopsdk::Plan::CustomField]) }
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
      sig { returns(T.nilable(Whopsdk::Plan::Invoice)) }
      attr_reader :invoice

      sig { params(invoice: T.nilable(Whopsdk::Plan::Invoice::OrHash)).void }
      attr_writer :invoice

      # The number of members for the plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :member_count

      # The type of plan that can be attached to an access pass
      sig { returns(T.nilable(Whopsdk::PlanType::TaggedSymbol)) }
      attr_accessor :plan_type

      # The access pass for the plan.
      sig { returns(T.nilable(Whopsdk::Plan::Product)) }
      attr_reader :product

      sig { params(product: T.nilable(Whopsdk::Plan::Product::OrHash)).void }
      attr_writer :product

      # The direct link to purchase the access pass.
      sig { returns(String) }
      attr_accessor :purchase_link

      # The methods of how a plan can be released (including raffles and waitlists).
      sig { returns(T.nilable(Whopsdk::ReleaseMethod::TaggedSymbol)) }
      attr_accessor :release_method

      # The price a person has to pay for a plan on the renewal purchase.
      sig { returns(Float) }
      attr_accessor :renewal_price

      # Whether or not the tax is included in a plan's price (or if it hasn't been set
      # up)
      sig { returns(T.nilable(Whopsdk::TaxType::TaggedSymbol)) }
      attr_accessor :tax_type

      # The number of free trial days added before a renewal plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      # When the plan was last updated.
      sig { returns(Integer) }
      attr_accessor :updated_at

      # Visibility of a resource
      sig { returns(T.nilable(Whopsdk::Visibility::TaggedSymbol)) }
      attr_accessor :visibility

      # An object representing a (sanitized) plan of an access pass.
      sig do
        params(
          id: String,
          billing_period: T.nilable(Integer),
          collect_tax: T::Boolean,
          company: T.nilable(Whopsdk::Plan::Company::OrHash),
          created_at: Integer,
          currency: T.nilable(Whopsdk::Currency::OrSymbol),
          custom_fields: T::Array[Whopsdk::Plan::CustomField::OrHash],
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          initial_price: Float,
          internal_notes: T.nilable(String),
          invoice: T.nilable(Whopsdk::Plan::Invoice::OrHash),
          member_count: T.nilable(Integer),
          plan_type: T.nilable(Whopsdk::PlanType::OrSymbol),
          product: T.nilable(Whopsdk::Plan::Product::OrHash),
          purchase_link: String,
          release_method: T.nilable(Whopsdk::ReleaseMethod::OrSymbol),
          renewal_price: Float,
          tax_type: T.nilable(Whopsdk::TaxType::OrSymbol),
          trial_period_days: T.nilable(Integer),
          updated_at: Integer,
          visibility: T.nilable(Whopsdk::Visibility::OrSymbol)
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
        # The available currencies on the platform
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
        # The type of plan that can be attached to an access pass
        plan_type:,
        # The access pass for the plan.
        product:,
        # The direct link to purchase the access pass.
        purchase_link:,
        # The methods of how a plan can be released (including raffles and waitlists).
        release_method:,
        # The price a person has to pay for a plan on the renewal purchase.
        renewal_price:,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        tax_type:,
        # The number of free trial days added before a renewal plan.
        trial_period_days:,
        # When the plan was last updated.
        updated_at:,
        # Visibility of a resource
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            billing_period: T.nilable(Integer),
            collect_tax: T::Boolean,
            company: T.nilable(Whopsdk::Plan::Company),
            created_at: Integer,
            currency: T.nilable(Whopsdk::Currency::TaggedSymbol),
            custom_fields: T::Array[Whopsdk::Plan::CustomField],
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            initial_price: Float,
            internal_notes: T.nilable(String),
            invoice: T.nilable(Whopsdk::Plan::Invoice),
            member_count: T.nilable(Integer),
            plan_type: T.nilable(Whopsdk::PlanType::TaggedSymbol),
            product: T.nilable(Whopsdk::Plan::Product),
            purchase_link: String,
            release_method: T.nilable(Whopsdk::ReleaseMethod::TaggedSymbol),
            renewal_price: Float,
            tax_type: T.nilable(Whopsdk::TaxType::TaggedSymbol),
            trial_period_days: T.nilable(Integer),
            updated_at: Integer,
            visibility: T.nilable(Whopsdk::Visibility::TaggedSymbol)
          }
        )
      end
      def to_hash
      end

      class Company < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Plan::Company, Whopsdk::Internal::AnyHash)
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

      class CustomField < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Plan::CustomField, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the given custom field
        sig { returns(String) }
        attr_accessor :id

        # The type of the custom field.
        sig do
          returns(
            T.nilable(Whopsdk::Plan::CustomField::FieldType::TaggedSymbol)
          )
        end
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
            field_type:
              T.nilable(Whopsdk::Plan::CustomField::FieldType::OrSymbol),
            name: String,
            order: T.nilable(Integer),
            placeholder: T.nilable(String),
            required: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the given custom field
          id:,
          # The type of the custom field.
          field_type:,
          # The title/header of the custom field.
          name:,
          # How the custom field should be ordered when rendered on the checkout page.
          order:,
          # An example response displayed in the input field.
          placeholder:,
          # Whether or not the custom field is required.
          required:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              field_type:
                T.nilable(Whopsdk::Plan::CustomField::FieldType::TaggedSymbol),
              name: String,
              order: T.nilable(Integer),
              placeholder: T.nilable(String),
              required: T::Boolean
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
              T.all(Symbol, Whopsdk::Plan::CustomField::FieldType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(:text, Whopsdk::Plan::CustomField::FieldType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Whopsdk::Plan::CustomField::FieldType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Invoice < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Plan::Invoice, Whopsdk::Internal::AnyHash)
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

      class Product < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Plan::Product, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the public access pass.
        sig { returns(String) }
        attr_accessor :id

        # The title of the access pass. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The access pass for the plan.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The internal ID of the public access pass.
          id:,
          # The title of the access pass. Use for Whop 4.0.
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
