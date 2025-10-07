# typed: strong

module Whopsdk
  module Models
    class PlanCreateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Whopsdk::PlanCreateParams, Whopsdk::Internal::AnyHash)
        end

      # The company the plan should be created for.
      sig { returns(String) }
      attr_accessor :company_id

      # The access pass the plan is related to.
      sig { returns(String) }
      attr_accessor :product_id

      # The interval at which the plan charges (renewal plans).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :billing_period

      # The available currencies on the platform
      sig { returns(T.nilable(Whopsdk::Currency::OrSymbol)) }
      attr_accessor :currency

      # An array of custom field objects.
      sig do
        returns(T.nilable(T::Array[Whopsdk::PlanCreateParams::CustomField]))
      end
      attr_accessor :custom_fields

      # The description of the plan.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The interval at which the plan charges (expiration plans).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expiration_days

      # An image for the plan. This will be visible on the product page to customers.
      sig { returns(T.nilable(Whopsdk::PlanCreateParams::Image)) }
      attr_reader :image

      sig do
        params(image: T.nilable(Whopsdk::PlanCreateParams::Image::OrHash)).void
      end
      attr_writer :image

      # An additional amount charged upon first purchase.
      sig { returns(T.nilable(Float)) }
      attr_accessor :initial_price

      # A personal description or notes section for the business.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # Whether or not the tax is included in a plan's price (or if it hasn't been set
      # up)
      sig { returns(T.nilable(Whopsdk::TaxType::OrSymbol)) }
      attr_accessor :override_tax_type

      # The type of plan that can be attached to an access pass
      sig { returns(T.nilable(Whopsdk::PlanType::OrSymbol)) }
      attr_accessor :plan_type

      # The methods of how a plan can be released.
      sig { returns(T.nilable(Whopsdk::ReleaseMethod::OrSymbol)) }
      attr_accessor :release_method

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
      sig { returns(T.nilable(Whopsdk::Visibility::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          company_id: String,
          product_id: String,
          billing_period: T.nilable(Integer),
          currency: T.nilable(Whopsdk::Currency::OrSymbol),
          custom_fields:
            T.nilable(T::Array[Whopsdk::PlanCreateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image: T.nilable(Whopsdk::PlanCreateParams::Image::OrHash),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          override_tax_type: T.nilable(Whopsdk::TaxType::OrSymbol),
          plan_type: T.nilable(Whopsdk::PlanType::OrSymbol),
          release_method: T.nilable(Whopsdk::ReleaseMethod::OrSymbol),
          renewal_price: T.nilable(Float),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          visibility: T.nilable(Whopsdk::Visibility::OrSymbol),
          request_options: Whopsdk::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The company the plan should be created for.
        company_id:,
        # The access pass the plan is related to.
        product_id:,
        # The interval at which the plan charges (renewal plans).
        billing_period: nil,
        # The available currencies on the platform
        currency: nil,
        # An array of custom field objects.
        custom_fields: nil,
        # The description of the plan.
        description: nil,
        # The interval at which the plan charges (expiration plans).
        expiration_days: nil,
        # An image for the plan. This will be visible on the product page to customers.
        image: nil,
        # An additional amount charged upon first purchase.
        initial_price: nil,
        # A personal description or notes section for the business.
        internal_notes: nil,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        override_tax_type: nil,
        # The type of plan that can be attached to an access pass
        plan_type: nil,
        # The methods of how a plan can be released.
        release_method: nil,
        # The amount the customer is charged every billing period.
        renewal_price: nil,
        # The title of the plan. This will be visible on the product page to customers.
        title: nil,
        # The number of free trial days added before a renewal plan.
        trial_period_days: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            company_id: String,
            product_id: String,
            billing_period: T.nilable(Integer),
            currency: T.nilable(Whopsdk::Currency::OrSymbol),
            custom_fields:
              T.nilable(T::Array[Whopsdk::PlanCreateParams::CustomField]),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            image: T.nilable(Whopsdk::PlanCreateParams::Image),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            override_tax_type: T.nilable(Whopsdk::TaxType::OrSymbol),
            plan_type: T.nilable(Whopsdk::PlanType::OrSymbol),
            release_method: T.nilable(Whopsdk::ReleaseMethod::OrSymbol),
            renewal_price: T.nilable(Float),
            title: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            visibility: T.nilable(Whopsdk::Visibility::OrSymbol),
            request_options: Whopsdk::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CustomField < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::PlanCreateParams::CustomField,
              Whopsdk::Internal::AnyHash
            )
          end

        # The type of the custom field.
        sig do
          returns(
            T.nilable(
              Whopsdk::PlanCreateParams::CustomField::FieldType::OrSymbol
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
                Whopsdk::PlanCreateParams::CustomField::FieldType::OrSymbol
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
                  Whopsdk::PlanCreateParams::CustomField::FieldType::OrSymbol
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
              T.all(Symbol, Whopsdk::PlanCreateParams::CustomField::FieldType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              Whopsdk::PlanCreateParams::CustomField::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Whopsdk::PlanCreateParams::CustomField::FieldType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Image < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::PlanCreateParams::Image, Whopsdk::Internal::AnyHash)
          end

        # The ID of an existing attachment object. Use this when updating a resource and
        # keeping a subset of the attachments. Don't use this unless you know what you're
        # doing.
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # This ID should be used the first time you upload an attachment. It is the ID of
        # the direct upload that was created when uploading the file to S3 via the
        # mediaDirectUpload mutation.
        sig { returns(T.nilable(String)) }
        attr_accessor :direct_upload_id

        # An image for the plan. This will be visible on the product page to customers.
        sig do
          params(
            id: T.nilable(String),
            direct_upload_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          id: nil,
          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          direct_upload_id: nil
        )
        end

        sig do
          override.returns(
            { id: T.nilable(String), direct_upload_id: T.nilable(String) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
