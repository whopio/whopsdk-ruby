# typed: strong

module WhopSDK
  module Models
    class CheckoutConfigurationCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CheckoutConfigurationCreateParams,
            WhopSDK::Internal::AnyHash
          )
        end

      # The affiliate code to use for the checkout session
      sig { returns(T.nilable(String)) }
      attr_accessor :affiliate_code

      # The metadata to use for the checkout session
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # Pass this object to create a new plan for this checkout session
      sig do
        returns(T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan))
      end
      attr_reader :plan

      sig do
        params(
          plan:
            T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan::OrHash)
        ).void
      end
      attr_writer :plan

      # The ID of the plan to use for the checkout session
      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      # The URL to redirect the user to after the checkout session is created
      sig { returns(T.nilable(String)) }
      attr_accessor :redirect_url

      sig do
        params(
          affiliate_code: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          plan:
            T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan::OrHash),
          plan_id: T.nilable(String),
          redirect_url: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The affiliate code to use for the checkout session
        affiliate_code: nil,
        # The metadata to use for the checkout session
        metadata: nil,
        # Pass this object to create a new plan for this checkout session
        plan: nil,
        # The ID of the plan to use for the checkout session
        plan_id: nil,
        # The URL to redirect the user to after the checkout session is created
        redirect_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            affiliate_code: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            plan: T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan),
            plan_id: T.nilable(String),
            redirect_url: T.nilable(String),
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
              WhopSDK::CheckoutConfigurationCreateParams::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # The company the plan should be created for.
        sig { returns(String) }
        attr_accessor :company_id

        # The interval at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # The available currencies on the platform
        sig { returns(T.nilable(WhopSDK::Currency::OrSymbol)) }
        attr_accessor :currency

        # An array of custom field objects.
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::CheckoutConfigurationCreateParams::Plan::CustomField
              ]
            )
          )
        end
        attr_accessor :custom_fields

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

        # An image for the plan. This will be visible on the product page to customers.
        sig do
          returns(
            T.nilable(WhopSDK::CheckoutConfigurationCreateParams::Plan::Image)
          )
        end
        attr_reader :image

        sig do
          params(
            image:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Image::OrHash
              )
          ).void
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
        sig { returns(T.nilable(WhopSDK::TaxType::OrSymbol)) }
        attr_accessor :override_tax_type

        # The type of plan that can be attached to an access pass
        sig { returns(T.nilable(WhopSDK::PlanType::OrSymbol)) }
        attr_accessor :plan_type

        # The product the plan is related to.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_id

        # The methods of how a plan can be released.
        sig { returns(T.nilable(WhopSDK::ReleaseMethod::OrSymbol)) }
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
        sig { returns(T.nilable(WhopSDK::Visibility::OrSymbol)) }
        attr_accessor :visibility

        # Pass this object to create a new plan for this checkout session
        sig do
          params(
            company_id: String,
            billing_period: T.nilable(Integer),
            currency: T.nilable(WhopSDK::Currency::OrSymbol),
            custom_fields:
              T.nilable(
                T::Array[
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::CustomField::OrHash
                ]
              ),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            force_create_new_plan: T.nilable(T::Boolean),
            image:
              T.nilable(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Image::OrHash
              ),
            initial_price: T.nilable(Float),
            internal_notes: T.nilable(String),
            override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
            plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
            product_id: T.nilable(String),
            release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
            renewal_price: T.nilable(Float),
            title: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            visibility: T.nilable(WhopSDK::Visibility::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          # The company the plan should be created for.
          company_id:,
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
          # Whether to force the creation of a new plan even if one with the same attributes
          # already exists.
          force_create_new_plan: nil,
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
          # The product the plan is related to.
          product_id: nil,
          # The methods of how a plan can be released.
          release_method: nil,
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
              company_id: String,
              billing_period: T.nilable(Integer),
              currency: T.nilable(WhopSDK::Currency::OrSymbol),
              custom_fields:
                T.nilable(
                  T::Array[
                    WhopSDK::CheckoutConfigurationCreateParams::Plan::CustomField
                  ]
                ),
              description: T.nilable(String),
              expiration_days: T.nilable(Integer),
              force_create_new_plan: T.nilable(T::Boolean),
              image:
                T.nilable(
                  WhopSDK::CheckoutConfigurationCreateParams::Plan::Image
                ),
              initial_price: T.nilable(Float),
              internal_notes: T.nilable(String),
              override_tax_type: T.nilable(WhopSDK::TaxType::OrSymbol),
              plan_type: T.nilable(WhopSDK::PlanType::OrSymbol),
              product_id: T.nilable(String),
              release_method: T.nilable(WhopSDK::ReleaseMethod::OrSymbol),
              renewal_price: T.nilable(Float),
              title: T.nilable(String),
              trial_period_days: T.nilable(Integer),
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
                WhopSDK::CheckoutConfigurationCreateParams::Plan::CustomField,
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

        class Image < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CheckoutConfigurationCreateParams::Plan::Image,
                WhopSDK::Internal::AnyHash
              )
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
end
