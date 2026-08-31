# typed: strong

module WhopSDK
  module Models
    class PlanListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::PlanListResponse, WhopSDK::Internal::AnyHash)
        end

      # Plan ID, prefixed `plan_`.
      sig { returns(String) }
      attr_accessor :id

      # Account that sells this plan; `null` for standalone invoice plans.
      sig { returns(T.nilable(WhopSDK::Models::PlanListResponse::Account)) }
      attr_reader :account

      sig do
        params(
          account: T.nilable(WhopSDK::Models::PlanListResponse::Account::OrHash)
        ).void
      end
      attr_writer :account

      # Whether adaptive pricing is enabled for this plan. Raw setting — does not check
      # processor compatibility or feature flags.
      sig { returns(T::Boolean) }
      attr_accessor :adaptive_pricing_enabled

      # Number of days between recurring charges, such as 30 for monthly or 365 for
      # annual. `null` for one-time plans.
      sig { returns(T.nilable(Float)) }
      attr_accessor :billing_period

      # Billing intervals the cancellation discount applies to (`0` forever, `1` first
      # payment, or a month count). `null` when none is offered or the actor lacks the
      # `plan:basic:read` scope.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cancel_discount_intervals

      # Cancellation discount as a whole-number percentage. `null` when none is offered
      # or the actor lacks the `plan:basic:read` scope.
      sig { returns(T.nilable(Float)) }
      attr_accessor :cancel_discount_percentage

      # Plan-level checkout styling (`background_color`, `button_color`, `font_family`,
      # `border_style`); `null` inherits the account default.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :checkout_styling

      # When the plan was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Three-letter ISO currency code for this plan's prices.
      sig { returns(String) }
      attr_accessor :currency

      sig { returns(T::Array[WhopSDK::Models::PlanListResponse::CustomField]) }
      attr_accessor :custom_fields

      # Customer-visible plan description. Maximum 1000 characters. `null` if no
      # description is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Access duration in days for expiration-based plans, such as 365 for a one-year
      # pass. `null` for plans without an expiration.
      sig { returns(T.nilable(Float)) }
      attr_accessor :expiration_days

      # Human-readable price for display (currency + interval), e.g. "$10 / month".
      sig { returns(String) }
      attr_accessor :formatted_price

      # Pricing-tier image (`url`, `blurhash`) shown on the product page; `null` when no
      # image is set.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :image

      # Initial purchase price in plan currency.
      sig { returns(Float) }
      attr_accessor :initial_price

      # Private notes not shown to customers. `null` unless the actor has the
      # `plan:basic:read` scope on the plan's account.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # Invoice this plan was generated for; `null` unless created for an invoice.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :invoice

      # Active memberships through this plan. `null` unless the actor has the
      # `plan:basic:read` scope on the plan's account.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_count

      # Custom key-value pairs stored on the plan. Included in webhook payloads for
      # payment and membership events. Maximum 50 keys, 100 characters per key, 500
      # characters per value. The reserved keys `custom_cta` and `custom_cta_url`, when
      # set, override the product's checkout call to action for this plan.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # Whether a cancellation discount is offered. `null` unless the actor has the
      # `plan:basic:read` scope on the plan's account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :offer_cancel_discount

      # Payment method configuration (`enabled`, `disabled`,
      # `include_platform_defaults`); `null` when plan uses default settings.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :payment_method_configuration

      # Billing model for this plan.
      sig { returns(WhopSDK::Models::PlanListResponse::PlanType::TaggedSymbol) }
      attr_accessor :plan_type

      # Product this plan belongs to; `null` for standalone plans.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :product

      # URL where customers can purchase this plan directly.
      sig { returns(String) }
      attr_accessor :purchase_url

      # Sales method for this plan.
      sig do
        returns(WhopSDK::Models::PlanListResponse::ReleaseMethod::TaggedSymbol)
      end
      attr_accessor :release_method

      # Recurring price charged every billing period.
      sig { returns(Float) }
      attr_accessor :renewal_price

      # Installment payments required before the subscription pauses. Must be greater
      # than 1. `null` if split pay is not configured.
      sig { returns(T.nilable(Float)) }
      attr_accessor :split_pay_required_payments

      # Units available for purchase. `null` unless the actor has the `plan:basic:read`
      # scope on the plan's account.
      sig { returns(T.nilable(Float)) }
      attr_accessor :stock

      # Original initial price shown with a strikethrough, in the plan's currency.
      # `null` when no strikethrough is set.
      sig { returns(T.nilable(Float)) }
      attr_accessor :strike_through_initial_price

      # Original renewal price shown with a strikethrough, in the plan's currency.
      # `null` when no strikethrough is set.
      sig { returns(T.nilable(Float)) }
      attr_accessor :strike_through_renewal_price

      # 3D Secure behavior for this plan; `null` inherits the account default.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::PlanListResponse::ThreeDSLevel::TaggedSymbol
          )
        )
      end
      attr_accessor :three_ds_level

      # Plan display name shown to customers. Maximum 30 characters. `null` if no title
      # has been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Free trial days before the first renewal charge. `null` if no trial is
      # configured or the user has already used a trial for this plan.
      sig { returns(T.nilable(Float)) }
      attr_accessor :trial_period_days

      # Whether the plan has unlimited stock. When `true`, the `stock` field is ignored;
      # waitlist plans always report `true`.
      sig { returns(T::Boolean) }
      attr_accessor :unlimited_stock

      # When the plan was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # Controls where this plan can be seen. When `hidden`, the plan is reachable only
      # by its direct link.
      sig do
        returns(WhopSDK::Models::PlanListResponse::Visibility::TaggedSymbol)
      end
      attr_accessor :visibility

      sig do
        params(
          id: String,
          account:
            T.nilable(WhopSDK::Models::PlanListResponse::Account::OrHash),
          adaptive_pricing_enabled: T::Boolean,
          billing_period: T.nilable(Float),
          cancel_discount_intervals: T.nilable(Float),
          cancel_discount_percentage: T.nilable(Float),
          checkout_styling: T.nilable(T.anything),
          created_at: String,
          currency: String,
          custom_fields:
            T::Array[WhopSDK::Models::PlanListResponse::CustomField::OrHash],
          description: T.nilable(String),
          expiration_days: T.nilable(Float),
          formatted_price: String,
          image: T.nilable(T.anything),
          initial_price: Float,
          internal_notes: T.nilable(String),
          invoice: T.nilable(T.anything),
          member_count: T.nilable(Float),
          metadata: T.nilable(T.anything),
          offer_cancel_discount: T.nilable(T::Boolean),
          payment_method_configuration: T.nilable(T.anything),
          plan_type: WhopSDK::Models::PlanListResponse::PlanType::OrSymbol,
          product: T.nilable(T.anything),
          purchase_url: String,
          release_method:
            WhopSDK::Models::PlanListResponse::ReleaseMethod::OrSymbol,
          renewal_price: Float,
          split_pay_required_payments: T.nilable(Float),
          stock: T.nilable(Float),
          strike_through_initial_price: T.nilable(Float),
          strike_through_renewal_price: T.nilable(Float),
          three_ds_level:
            T.nilable(
              WhopSDK::Models::PlanListResponse::ThreeDSLevel::OrSymbol
            ),
          title: T.nilable(String),
          trial_period_days: T.nilable(Float),
          unlimited_stock: T::Boolean,
          updated_at: String,
          visibility: WhopSDK::Models::PlanListResponse::Visibility::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Plan ID, prefixed `plan_`.
        id:,
        # Account that sells this plan; `null` for standalone invoice plans.
        account:,
        # Whether adaptive pricing is enabled for this plan. Raw setting — does not check
        # processor compatibility or feature flags.
        adaptive_pricing_enabled:,
        # Number of days between recurring charges, such as 30 for monthly or 365 for
        # annual. `null` for one-time plans.
        billing_period:,
        # Billing intervals the cancellation discount applies to (`0` forever, `1` first
        # payment, or a month count). `null` when none is offered or the actor lacks the
        # `plan:basic:read` scope.
        cancel_discount_intervals:,
        # Cancellation discount as a whole-number percentage. `null` when none is offered
        # or the actor lacks the `plan:basic:read` scope.
        cancel_discount_percentage:,
        # Plan-level checkout styling (`background_color`, `button_color`, `font_family`,
        # `border_style`); `null` inherits the account default.
        checkout_styling:,
        # When the plan was created, as an ISO 8601 timestamp.
        created_at:,
        # Three-letter ISO currency code for this plan's prices.
        currency:,
        custom_fields:,
        # Customer-visible plan description. Maximum 1000 characters. `null` if no
        # description is set.
        description:,
        # Access duration in days for expiration-based plans, such as 365 for a one-year
        # pass. `null` for plans without an expiration.
        expiration_days:,
        # Human-readable price for display (currency + interval), e.g. "$10 / month".
        formatted_price:,
        # Pricing-tier image (`url`, `blurhash`) shown on the product page; `null` when no
        # image is set.
        image:,
        # Initial purchase price in plan currency.
        initial_price:,
        # Private notes not shown to customers. `null` unless the actor has the
        # `plan:basic:read` scope on the plan's account.
        internal_notes:,
        # Invoice this plan was generated for; `null` unless created for an invoice.
        invoice:,
        # Active memberships through this plan. `null` unless the actor has the
        # `plan:basic:read` scope on the plan's account.
        member_count:,
        # Custom key-value pairs stored on the plan. Included in webhook payloads for
        # payment and membership events. Maximum 50 keys, 100 characters per key, 500
        # characters per value. The reserved keys `custom_cta` and `custom_cta_url`, when
        # set, override the product's checkout call to action for this plan.
        metadata:,
        # Whether a cancellation discount is offered. `null` unless the actor has the
        # `plan:basic:read` scope on the plan's account.
        offer_cancel_discount:,
        # Payment method configuration (`enabled`, `disabled`,
        # `include_platform_defaults`); `null` when plan uses default settings.
        payment_method_configuration:,
        # Billing model for this plan.
        plan_type:,
        # Product this plan belongs to; `null` for standalone plans.
        product:,
        # URL where customers can purchase this plan directly.
        purchase_url:,
        # Sales method for this plan.
        release_method:,
        # Recurring price charged every billing period.
        renewal_price:,
        # Installment payments required before the subscription pauses. Must be greater
        # than 1. `null` if split pay is not configured.
        split_pay_required_payments:,
        # Units available for purchase. `null` unless the actor has the `plan:basic:read`
        # scope on the plan's account.
        stock:,
        # Original initial price shown with a strikethrough, in the plan's currency.
        # `null` when no strikethrough is set.
        strike_through_initial_price:,
        # Original renewal price shown with a strikethrough, in the plan's currency.
        # `null` when no strikethrough is set.
        strike_through_renewal_price:,
        # 3D Secure behavior for this plan; `null` inherits the account default.
        three_ds_level:,
        # Plan display name shown to customers. Maximum 30 characters. `null` if no title
        # has been set.
        title:,
        # Free trial days before the first renewal charge. `null` if no trial is
        # configured or the user has already used a trial for this plan.
        trial_period_days:,
        # Whether the plan has unlimited stock. When `true`, the `stock` field is ignored;
        # waitlist plans always report `true`.
        unlimited_stock:,
        # When the plan was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # Controls where this plan can be seen. When `hidden`, the plan is reachable only
        # by its direct link.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account: T.nilable(WhopSDK::Models::PlanListResponse::Account),
            adaptive_pricing_enabled: T::Boolean,
            billing_period: T.nilable(Float),
            cancel_discount_intervals: T.nilable(Float),
            cancel_discount_percentage: T.nilable(Float),
            checkout_styling: T.nilable(T.anything),
            created_at: String,
            currency: String,
            custom_fields:
              T::Array[WhopSDK::Models::PlanListResponse::CustomField],
            description: T.nilable(String),
            expiration_days: T.nilable(Float),
            formatted_price: String,
            image: T.nilable(T.anything),
            initial_price: Float,
            internal_notes: T.nilable(String),
            invoice: T.nilable(T.anything),
            member_count: T.nilable(Float),
            metadata: T.nilable(T.anything),
            offer_cancel_discount: T.nilable(T::Boolean),
            payment_method_configuration: T.nilable(T.anything),
            plan_type:
              WhopSDK::Models::PlanListResponse::PlanType::TaggedSymbol,
            product: T.nilable(T.anything),
            purchase_url: String,
            release_method:
              WhopSDK::Models::PlanListResponse::ReleaseMethod::TaggedSymbol,
            renewal_price: Float,
            split_pay_required_payments: T.nilable(Float),
            stock: T.nilable(Float),
            strike_through_initial_price: T.nilable(Float),
            strike_through_renewal_price: T.nilable(Float),
            three_ds_level:
              T.nilable(
                WhopSDK::Models::PlanListResponse::ThreeDSLevel::TaggedSymbol
              ),
            title: T.nilable(String),
            trial_period_days: T.nilable(Float),
            unlimited_stock: T::Boolean,
            updated_at: String,
            visibility:
              WhopSDK::Models::PlanListResponse::Visibility::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Account < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PlanListResponse::Account,
              WhopSDK::Internal::AnyHash
            )
          end

        # Account ID, prefixed `biz_`.
        sig { returns(String) }
        attr_accessor :id

        # Account display name.
        sig { returns(String) }
        attr_accessor :title

        # Account that sells this plan; `null` for standalone invoice plans.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # Account ID, prefixed `biz_`.
          id:,
          # Account display name.
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
            T.any(
              WhopSDK::Models::PlanListResponse::CustomField,
              WhopSDK::Internal::AnyHash
            )
          end

        # Custom field ID, prefixed `field_`.
        sig { returns(String) }
        attr_accessor :id

        # Custom field input type.
        sig do
          returns(
            WhopSDK::Models::PlanListResponse::CustomField::FieldType::TaggedSymbol
          )
        end
        attr_accessor :field_type

        # Field label shown to customer at checkout.
        sig { returns(String) }
        attr_accessor :name

        # Field position on checkout form.
        sig { returns(Float) }
        attr_accessor :order

        # Placeholder text shown in the empty field. `null` if none is set.
        sig { returns(T.nilable(String)) }
        attr_accessor :placeholder

        # Whether the customer must complete this field to check out.
        sig { returns(T::Boolean) }
        attr_accessor :required

        # Custom input fields collected on the checkout form.
        sig do
          params(
            id: String,
            field_type:
              WhopSDK::Models::PlanListResponse::CustomField::FieldType::OrSymbol,
            name: String,
            order: Float,
            placeholder: T.nilable(String),
            required: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Custom field ID, prefixed `field_`.
          id:,
          # Custom field input type.
          field_type:,
          # Field label shown to customer at checkout.
          name:,
          # Field position on checkout form.
          order:,
          # Placeholder text shown in the empty field. `null` if none is set.
          placeholder:,
          # Whether the customer must complete this field to check out.
          required:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              field_type:
                WhopSDK::Models::PlanListResponse::CustomField::FieldType::TaggedSymbol,
              name: String,
              order: Float,
              placeholder: T.nilable(String),
              required: T::Boolean
            }
          )
        end
        def to_hash
        end

        # Custom field input type.
        module FieldType
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::PlanListResponse::CustomField::FieldType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              WhopSDK::Models::PlanListResponse::CustomField::FieldType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::PlanListResponse::CustomField::FieldType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Billing model for this plan.
      module PlanType
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PlanListResponse::PlanType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RENEWAL =
          T.let(
            :renewal,
            WhopSDK::Models::PlanListResponse::PlanType::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            WhopSDK::Models::PlanListResponse::PlanType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::PlanListResponse::PlanType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sales method for this plan.
      module ReleaseMethod
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PlanListResponse::ReleaseMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUY_NOW =
          T.let(
            :buy_now,
            WhopSDK::Models::PlanListResponse::ReleaseMethod::TaggedSymbol
          )
        WAITLIST =
          T.let(
            :waitlist,
            WhopSDK::Models::PlanListResponse::ReleaseMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PlanListResponse::ReleaseMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # 3D Secure behavior for this plan; `null` inherits the account default.
      module ThreeDSLevel
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PlanListResponse::ThreeDSLevel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MANDATE_CHALLENGE =
          T.let(
            :mandate_challenge,
            WhopSDK::Models::PlanListResponse::ThreeDSLevel::TaggedSymbol
          )
        FRICTIONLESS =
          T.let(
            :frictionless,
            WhopSDK::Models::PlanListResponse::ThreeDSLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PlanListResponse::ThreeDSLevel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Controls where this plan can be seen. When `hidden`, the plan is reachable only
      # by its direct link.
      module Visibility
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::PlanListResponse::Visibility)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VISIBLE =
          T.let(
            :visible,
            WhopSDK::Models::PlanListResponse::Visibility::TaggedSymbol
          )
        HIDDEN =
          T.let(
            :hidden,
            WhopSDK::Models::PlanListResponse::Visibility::TaggedSymbol
          )
        ARCHIVED =
          T.let(
            :archived,
            WhopSDK::Models::PlanListResponse::Visibility::TaggedSymbol
          )
        QUICK_LINK =
          T.let(
            :quick_link,
            WhopSDK::Models::PlanListResponse::Visibility::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::PlanListResponse::Visibility::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
