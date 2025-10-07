# frozen_string_literal: true

module Whopsdk
  module Models
    class Plan < Whopsdk::Internal::Type::BaseModel
      # @!attribute id
      #   The internal ID of the plan.
      #
      #   @return [String]
      required :id, String

      # @!attribute billing_period
      #   The interval at which the plan charges (renewal plans).
      #
      #   @return [Integer, nil]
      required :billing_period, Integer, nil?: true

      # @!attribute collect_tax
      #   Whether or not the plan collects tax.
      #
      #   @return [Boolean]
      required :collect_tax, Whopsdk::Internal::Type::Boolean

      # @!attribute company
      #   The company for the plan.
      #
      #   @return [Whopsdk::Models::Plan::Company, nil]
      required :company, -> { Whopsdk::Plan::Company }, nil?: true

      # @!attribute created_at
      #   When the plan was created.
      #
      #   @return [Integer]
      required :created_at, Integer

      # @!attribute currency
      #   The available currencies on the platform
      #
      #   @return [Symbol, Whopsdk::Models::Currency, nil]
      required :currency, enum: -> { Whopsdk::Currency }, nil?: true

      # @!attribute custom_fields
      #   The custom fields for the plan.
      #
      #   @return [Array<Whopsdk::Models::Plan::CustomField>]
      required :custom_fields, -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Plan::CustomField] }

      # @!attribute description
      #   The description of the plan.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute expiration_days
      #   The interval at which the plan charges (expiration plans).
      #
      #   @return [Integer, nil]
      required :expiration_days, Integer, nil?: true

      # @!attribute initial_price
      #   The price a person has to pay for a plan on the initial purchase.
      #
      #   @return [Float]
      required :initial_price, Float

      # @!attribute internal_notes
      #   A personal description or notes section for the business.
      #
      #   @return [String, nil]
      required :internal_notes, String, nil?: true

      # @!attribute invoice
      #   The invoice associated with this plan.
      #
      #   @return [Whopsdk::Models::Plan::Invoice, nil]
      required :invoice, -> { Whopsdk::Plan::Invoice }, nil?: true

      # @!attribute member_count
      #   The number of members for the plan.
      #
      #   @return [Integer, nil]
      required :member_count, Integer, nil?: true

      # @!attribute plan_type
      #   The type of plan that can be attached to an access pass
      #
      #   @return [Symbol, Whopsdk::Models::PlanType, nil]
      required :plan_type, enum: -> { Whopsdk::PlanType }, nil?: true

      # @!attribute product
      #   The access pass for the plan.
      #
      #   @return [Whopsdk::Models::Plan::Product, nil]
      required :product, -> { Whopsdk::Plan::Product }, nil?: true

      # @!attribute purchase_link
      #   The direct link to purchase the access pass.
      #
      #   @return [String]
      required :purchase_link, String

      # @!attribute release_method
      #   The methods of how a plan can be released.
      #
      #   @return [Symbol, Whopsdk::Models::ReleaseMethod, nil]
      required :release_method, enum: -> { Whopsdk::ReleaseMethod }, nil?: true

      # @!attribute renewal_price
      #   The price a person has to pay for a plan on the renewal purchase.
      #
      #   @return [Float]
      required :renewal_price, Float

      # @!attribute tax_type
      #   Whether or not the tax is included in a plan's price (or if it hasn't been set
      #   up)
      #
      #   @return [Symbol, Whopsdk::Models::TaxType, nil]
      required :tax_type, enum: -> { Whopsdk::TaxType }, nil?: true

      # @!attribute trial_period_days
      #   The number of free trial days added before a renewal plan.
      #
      #   @return [Integer, nil]
      required :trial_period_days, Integer, nil?: true

      # @!attribute updated_at
      #   When the plan was last updated.
      #
      #   @return [Integer]
      required :updated_at, Integer

      # @!attribute visibility
      #   Visibility of a resource
      #
      #   @return [Symbol, Whopsdk::Models::Visibility, nil]
      required :visibility, enum: -> { Whopsdk::Visibility }, nil?: true

      # @!method initialize(id:, billing_period:, collect_tax:, company:, created_at:, currency:, custom_fields:, description:, expiration_days:, initial_price:, internal_notes:, invoice:, member_count:, plan_type:, product:, purchase_link:, release_method:, renewal_price:, tax_type:, trial_period_days:, updated_at:, visibility:)
      #   Some parameter documentations has been truncated, see {Whopsdk::Models::Plan}
      #   for more details.
      #
      #   An object representing a (sanitized) plan of an access pass.
      #
      #   @param id [String] The internal ID of the plan.
      #
      #   @param billing_period [Integer, nil] The interval at which the plan charges (renewal plans).
      #
      #   @param collect_tax [Boolean] Whether or not the plan collects tax.
      #
      #   @param company [Whopsdk::Models::Plan::Company, nil] The company for the plan.
      #
      #   @param created_at [Integer] When the plan was created.
      #
      #   @param currency [Symbol, Whopsdk::Models::Currency, nil] The available currencies on the platform
      #
      #   @param custom_fields [Array<Whopsdk::Models::Plan::CustomField>] The custom fields for the plan.
      #
      #   @param description [String, nil] The description of the plan.
      #
      #   @param expiration_days [Integer, nil] The interval at which the plan charges (expiration plans).
      #
      #   @param initial_price [Float] The price a person has to pay for a plan on the initial purchase.
      #
      #   @param internal_notes [String, nil] A personal description or notes section for the business.
      #
      #   @param invoice [Whopsdk::Models::Plan::Invoice, nil] The invoice associated with this plan.
      #
      #   @param member_count [Integer, nil] The number of members for the plan.
      #
      #   @param plan_type [Symbol, Whopsdk::Models::PlanType, nil] The type of plan that can be attached to an access pass
      #
      #   @param product [Whopsdk::Models::Plan::Product, nil] The access pass for the plan.
      #
      #   @param purchase_link [String] The direct link to purchase the access pass.
      #
      #   @param release_method [Symbol, Whopsdk::Models::ReleaseMethod, nil] The methods of how a plan can be released.
      #
      #   @param renewal_price [Float] The price a person has to pay for a plan on the renewal purchase.
      #
      #   @param tax_type [Symbol, Whopsdk::Models::TaxType, nil] Whether or not the tax is included in a plan's price (or if it hasn't been set u
      #
      #   @param trial_period_days [Integer, nil] The number of free trial days added before a renewal plan.
      #
      #   @param updated_at [Integer] When the plan was last updated.
      #
      #   @param visibility [Symbol, Whopsdk::Models::Visibility, nil] Visibility of a resource

      # @see Whopsdk::Models::Plan#company
      class Company < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID (tag) of the company.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the company.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The company for the plan.
        #
        #   @param id [String] The ID (tag) of the company.
        #
        #   @param title [String] The title of the company.
      end

      class CustomField < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the given custom field
        #
        #   @return [String]
        required :id, String

        # @!attribute field_type
        #   The type of the custom field.
        #
        #   @return [Symbol, Whopsdk::Models::Plan::CustomField::FieldType, nil]
        required :field_type, enum: -> { Whopsdk::Plan::CustomField::FieldType }, nil?: true

        # @!attribute name
        #   The title/header of the custom field.
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #   How the custom field should be ordered when rendered on the checkout page.
        #
        #   @return [Integer, nil]
        required :order, Integer, nil?: true

        # @!attribute placeholder
        #   An example response displayed in the input field.
        #
        #   @return [String, nil]
        required :placeholder, String, nil?: true

        # @!attribute required
        #   Whether or not the custom field is required.
        #
        #   @return [Boolean]
        required :required, Whopsdk::Internal::Type::Boolean

        # @!method initialize(id:, field_type:, name:, order:, placeholder:, required:)
        #   An object representing a custom field for a plan.
        #
        #   @param id [String] The internal ID of the given custom field
        #
        #   @param field_type [Symbol, Whopsdk::Models::Plan::CustomField::FieldType, nil] The type of the custom field.
        #
        #   @param name [String] The title/header of the custom field.
        #
        #   @param order [Integer, nil] How the custom field should be ordered when rendered on the checkout page.
        #
        #   @param placeholder [String, nil] An example response displayed in the input field.
        #
        #   @param required [Boolean] Whether or not the custom field is required.

        # The type of the custom field.
        #
        # @see Whopsdk::Models::Plan::CustomField#field_type
        module FieldType
          extend Whopsdk::Internal::Type::Enum

          TEXT = :text

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Whopsdk::Models::Plan#invoice
      class Invoice < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the invoice.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The invoice associated with this plan.
        #
        #   @param id [String] The ID of the invoice.
      end

      # @see Whopsdk::Models::Plan#product
      class Product < Whopsdk::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the public access pass.
        #
        #   @return [String]
        required :id, String

        # @!attribute title
        #   The title of the access pass. Use for Whop 4.0.
        #
        #   @return [String]
        required :title, String

        # @!method initialize(id:, title:)
        #   The access pass for the plan.
        #
        #   @param id [String] The internal ID of the public access pass.
        #
        #   @param title [String] The title of the access pass. Use for Whop 4.0.
      end
    end
  end
end
