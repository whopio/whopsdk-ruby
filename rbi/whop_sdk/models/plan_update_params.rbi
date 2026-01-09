# typed: strong

module WhopSDK
  module Models
    class PlanUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::PlanUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The interval at which the plan charges (renewal plans).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :billing_period

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
      attr_accessor :currency

      # An array of custom field objects.
      sig do
        returns(T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField]))
      end
      attr_accessor :custom_fields

      # The description of the plan.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The interval at which the plan charges (expiration plans).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expiration_days

      # An image for the plan. This will be visible on the product page to customers.
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::PlanUpdateParams::Image::AttachmentInputWithDirectUploadID,
              WhopSDK::PlanUpdateParams::Image::AttachmentInputWithID
            )
          )
        )
      end
      attr_accessor :image

      # An additional amount charged upon first purchase.
      sig { returns(T.nilable(Float)) }
      attr_accessor :initial_price

      # A personal description or notes section for the business.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # Whether this plan uses legacy payment method controls
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :legacy_payment_method_controls

      # Whether or not to offer a discount to cancel a subscription.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :offer_cancel_discount

      # Whether or not the tax is included in a plan's price (or if it hasn't been set
      # up)
      sig { returns(T.nilable(WhopSDK::TaxType::OrSymbol)) }
      attr_accessor :override_tax_type

      # The explicit payment method configuration for the plan. If sent as null, the
      # custom configuration will be removed.
      sig do
        returns(
          T.nilable(WhopSDK::PlanUpdateParams::PaymentMethodConfiguration)
        )
      end
      attr_reader :payment_method_configuration

      sig do
        params(
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanUpdateParams::PaymentMethodConfiguration::OrHash
            )
        ).void
      end
      attr_writer :payment_method_configuration

      # The amount the customer is charged every billing period.
      sig { returns(T.nilable(Float)) }
      attr_accessor :renewal_price

      # The number of units available for purchase.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :stock

      # The price to display with a strikethrough for the initial price. Provided as a
      # number in dollars. Eg: 19.99 for $19.99
      sig { returns(T.nilable(Float)) }
      attr_accessor :strike_through_initial_price

      # The price to display with a strikethrough for the renewal price. Provided as a
      # number in dollars. Eg: 19.99 for $19.99
      sig { returns(T.nilable(Float)) }
      attr_accessor :strike_through_renewal_price

      # The title of the plan. This will be visible on the product page to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The number of free trial days added before a renewal plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      # Limits/doesn't limit the number of units available for purchase.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :unlimited_stock

      # Visibility of a resource
      sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          billing_period: T.nilable(Integer),
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          custom_fields:
            T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField::OrHash]),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          image:
            T.nilable(
              T.any(
                WhopSDK::PlanUpdateParams::Image::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::PlanUpdateParams::Image::AttachmentInputWithID::OrHash
              )
            ),
          initial_price: T.nilable(Float),
          internal_notes: T.nilable(String),
          legacy_payment_method_controls: T.nilable(T::Boolean),
          offer_cancel_discount: T.nilable(T::Boolean),
          override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
          payment_method_configuration:
            T.nilable(
              WhopSDK::PlanUpdateParams::PaymentMethodConfiguration::OrHash
            ),
          renewal_price: T.nilable(Float),
          stock: T.nilable(Integer),
          strike_through_initial_price: T.nilable(Float),
          strike_through_renewal_price: T.nilable(Float),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T.nilable(T::Boolean),
          visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
        # Whether this plan uses legacy payment method controls
        legacy_payment_method_controls: nil,
        # Whether or not to offer a discount to cancel a subscription.
        offer_cancel_discount: nil,
        # Whether or not the tax is included in a plan's price (or if it hasn't been set
        # up)
        override_tax_type: nil,
        # The explicit payment method configuration for the plan. If sent as null, the
        # custom configuration will be removed.
        payment_method_configuration: nil,
        # The amount the customer is charged every billing period.
        renewal_price: nil,
        # The number of units available for purchase.
        stock: nil,
        # The price to display with a strikethrough for the initial price. Provided as a
        # number in dollars. Eg: 19.99 for $19.99
        strike_through_initial_price: nil,
        # The price to display with a strikethrough for the renewal price. Provided as a
        # number in dollars. Eg: 19.99 for $19.99
        strike_through_renewal_price: nil,
        # The title of the plan. This will be visible on the product page to customers.
        title: nil,
        # The number of free trial days added before a renewal plan.
        trial_period_days: nil,
        # Limits/doesn't limit the number of units available for purchase.
        unlimited_stock: nil,
        # Visibility of a resource
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            billing_period: T.nilable(Integer),
            currency: T.nilable(WhopSDK::Currency::OrSymbol),
            custom_fields:
              T.nilable(T::Array[WhopSDK::PlanUpdateParams::CustomField]),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            image:
              T.nilable(
                T.any(
                  WhopSDK::PlanUpdateParams::Image::AttachmentInputWithDirectUploadID,
                  WhopSDK::PlanUpdateParams::Image::AttachmentInputWithID
                )
              ),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            legacy_payment_method_controls: T.nilable(T::Boolean),
            offer_cancel_discount: T.nilable(T::Boolean),
            override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
            payment_method_configuration:
              T.nilable(WhopSDK::PlanUpdateParams::PaymentMethodConfiguration),
            renewal_price: T.nilable(Float),
            stock: T.nilable(Integer),
            strike_through_initial_price: T.nilable(Float),
            strike_through_renewal_price: T.nilable(Float),
            title: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            unlimited_stock: T.nilable(T::Boolean),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CustomField < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PlanUpdateParams::CustomField,
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

      # An image for the plan. This will be visible on the product page to customers.
      module Image
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::PlanUpdateParams::Image::AttachmentInputWithDirectUploadID,
              WhopSDK::PlanUpdateParams::Image::AttachmentInputWithID
            )
          end

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PlanUpdateParams::Image::AttachmentInputWithDirectUploadID,
                WhopSDK::Internal::AnyHash
              )
            end

          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          sig { returns(String) }
          attr_accessor :direct_upload_id

          # Input for an attachment
          sig { params(direct_upload_id: String).returns(T.attached_class) }
          def self.new(
            # This ID should be used the first time you upload an attachment. It is the ID of
            # the direct upload that was created when uploading the file to S3 via the
            # mediaDirectUpload mutation.
            direct_upload_id:
          )
          end

          sig { override.returns({ direct_upload_id: String }) }
          def to_hash
          end
        end

        class AttachmentInputWithID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::PlanUpdateParams::Image::AttachmentInputWithID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          sig { returns(String) }
          attr_accessor :id

          # Input for an attachment
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing attachment object. Use this when updating a resource and
            # keeping a subset of the attachments. Don't use this unless you know what you're
            # doing.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(T::Array[WhopSDK::PlanUpdateParams::Image::Variants])
        end
        def self.variants
        end
      end

      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::PlanUpdateParams::PaymentMethodConfiguration,
              WhopSDK::Internal::AnyHash
            )
          end

        # An array of payment method identifiers that are explicitly disabled. Only
        # applies if the include_platform_defaults is true.
        sig { returns(T::Array[WhopSDK::PaymentMethodTypes::OrSymbol]) }
        attr_accessor :disabled

        # An array of payment method identifiers that are explicitly enabled. This means
        # these payment methods will be shown on checkout. Example use case is to only
        # enable a specific payment method like cashapp, or extending the platform
        # defaults with additional methods.
        sig { returns(T::Array[WhopSDK::PaymentMethodTypes::OrSymbol]) }
        attr_accessor :enabled

        # Whether Whop's platform default payment method enablement settings are included
        # in this configuration. The full list of default payment methods can be found in
        # the documentation at docs.whop.com/payments.
        sig { returns(T::Boolean) }
        attr_accessor :include_platform_defaults

        # The explicit payment method configuration for the plan. If sent as null, the
        # custom configuration will be removed.
        sig do
          params(
            disabled: T::Array[WhopSDK::PaymentMethodTypes::OrSymbol],
            enabled: T::Array[WhopSDK::PaymentMethodTypes::OrSymbol],
            include_platform_defaults: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of payment method identifiers that are explicitly disabled. Only
          # applies if the include_platform_defaults is true.
          disabled:,
          # An array of payment method identifiers that are explicitly enabled. This means
          # these payment methods will be shown on checkout. Example use case is to only
          # enable a specific payment method like cashapp, or extending the platform
          # defaults with additional methods.
          enabled:,
          # Whether Whop's platform default payment method enablement settings are included
          # in this configuration. The full list of default payment methods can be found in
          # the documentation at docs.whop.com/payments.
          include_platform_defaults:
        )
        end

        sig do
          override.returns(
            {
              disabled: T::Array[WhopSDK::PaymentMethodTypes::OrSymbol],
              enabled: T::Array[WhopSDK::PaymentMethodTypes::OrSymbol],
              include_platform_defaults: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
