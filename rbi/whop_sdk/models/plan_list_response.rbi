# typed: strong

module WhopSDK
  module Models
    class PlanListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::PlanListResponse, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the plan.
      sig { returns(String) }
      attr_accessor :id

      # The number of days between each recurring charge. Null for one-time plans. For
      # example, 30 for monthly or 365 for annual billing.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :billing_period

      # The company that sells this plan. Null for standalone invoice plans not linked
      # to a company.
      sig { returns(T.nilable(WhopSDK::Models::PlanListResponse::Company)) }
      attr_reader :company

      sig do
        params(
          company: T.nilable(WhopSDK::Models::PlanListResponse::Company::OrHash)
        ).void
      end
      attr_writer :company

      # The datetime the plan was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
      # amounts on the plan are denominated in this currency.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

      # A text description of the plan visible to customers. Maximum 500 characters.
      # Null if no description is set.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The number of days until the membership expires (for expiration-based plans).
      # For example, 365 for a one-year access pass.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expiration_days

      # The initial purchase price in the plan's base_currency (e.g., 49.99 for $49.99).
      # For one-time plans, this is the full price. For renewal plans, this is charged
      # on top of the first renewal_price.
      sig { returns(Float) }
      attr_accessor :initial_price

      # Private notes visible only to the company owner and team members. Not shown to
      # customers. Null if no notes have been added.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # The invoice this plan was generated for. Null if the plan was not created for a
      # specific invoice.
      sig { returns(T.nilable(WhopSDK::Models::PlanListResponse::Invoice)) }
      attr_reader :invoice

      sig do
        params(
          invoice: T.nilable(WhopSDK::Models::PlanListResponse::Invoice::OrHash)
        ).void
      end
      attr_writer :invoice

      # The number of users who currently hold an active membership through this plan.
      # Only visible to authorized team members.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :member_count

      # The explicit payment method configuration specifying which payment methods are
      # enabled or disabled for this plan. Null if the plan uses default settings.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::PlanListResponse::PaymentMethodConfiguration
          )
        )
      end
      attr_reader :payment_method_configuration

      sig do
        params(
          payment_method_configuration:
            T.nilable(
              WhopSDK::Models::PlanListResponse::PaymentMethodConfiguration::OrHash
            )
        ).void
      end
      attr_writer :payment_method_configuration

      # The billing model for this plan: 'renewal' for recurring subscriptions or
      # 'one_time' for single payments.
      sig { returns(WhopSDK::PlanType::TaggedSymbol) }
      attr_accessor :plan_type

      # The product that this plan belongs to. Null for standalone one-off purchases not
      # linked to a product.
      sig { returns(T.nilable(WhopSDK::Models::PlanListResponse::Product)) }
      attr_reader :product

      sig do
        params(
          product: T.nilable(WhopSDK::Models::PlanListResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # The full URL where customers can purchase this plan directly, bypassing the
      # product page.
      sig { returns(String) }
      attr_accessor :purchase_url

      # The method used to sell this plan: 'buy_now' for immediate purchase or
      # 'waitlist' for waitlist-based access.
      sig { returns(WhopSDK::ReleaseMethod::TaggedSymbol) }
      attr_accessor :release_method

      # The recurring price charged every billing_period in the plan's base_currency
      # (e.g., 9.99 for $9.99/period). Zero for one-time plans.
      sig { returns(Float) }
      attr_accessor :renewal_price

      # The total number of installment payments required before the subscription
      # pauses. Null if split pay is not configured. Must be greater than 1.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :split_pay_required_payments

      # The number of units available for purchase. Only visible to authorized team
      # members. Null if the requester lacks permission.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :stock

      # The display name of the plan shown to customers on the product page and at
      # checkout. Maximum 30 characters. Null if no title has been set.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The number of free trial days before the first charge on a renewal plan. Null if
      # no trial is configured or the current user has already used a trial for this
      # plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      # When true, the plan has unlimited stock (stock field is ignored). When false,
      # purchases are limited by the stock field.
      sig { returns(T::Boolean) }
      attr_accessor :unlimited_stock

      # The datetime the plan was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Controls whether the plan is visible to customers. When set to 'hidden', the
      # plan is only accessible via direct link.
      sig { returns(WhopSDK::Visibility::TaggedSymbol) }
      attr_accessor :visibility

      # A plan defines pricing and billing terms for a checkout. Plans can optionally
      # belong to a product, where they represent different pricing options such as
      # one-time payments, recurring subscriptions, or free trials.
      sig do
        params(
          id: String,
          billing_period: T.nilable(Integer),
          company:
            T.nilable(WhopSDK::Models::PlanListResponse::Company::OrHash),
          created_at: Time,
          currency: WhopSDK::Currency::OrSymbol,
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          initial_price: Float,
          internal_notes: T.nilable(String),
          invoice:
            T.nilable(WhopSDK::Models::PlanListResponse::Invoice::OrHash),
          member_count: T.nilable(Integer),
          payment_method_configuration:
            T.nilable(
              WhopSDK::Models::PlanListResponse::PaymentMethodConfiguration::OrHash
            ),
          plan_type: WhopSDK::PlanType::OrSymbol,
          product:
            T.nilable(WhopSDK::Models::PlanListResponse::Product::OrHash),
          purchase_url: String,
          release_method: WhopSDK::ReleaseMethod::OrSymbol,
          renewal_price: Float,
          split_pay_required_payments: T.nilable(Integer),
          stock: T.nilable(Integer),
          title: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          unlimited_stock: T::Boolean,
          updated_at: Time,
          visibility: WhopSDK::Visibility::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the plan.
        id:,
        # The number of days between each recurring charge. Null for one-time plans. For
        # example, 30 for monthly or 365 for annual billing.
        billing_period:,
        # The company that sells this plan. Null for standalone invoice plans not linked
        # to a company.
        company:,
        # The datetime the plan was created.
        created_at:,
        # The currency used for all prices on this plan (e.g., 'usd', 'eur'). All monetary
        # amounts on the plan are denominated in this currency.
        currency:,
        # A text description of the plan visible to customers. Maximum 500 characters.
        # Null if no description is set.
        description:,
        # The number of days until the membership expires (for expiration-based plans).
        # For example, 365 for a one-year access pass.
        expiration_days:,
        # The initial purchase price in the plan's base_currency (e.g., 49.99 for $49.99).
        # For one-time plans, this is the full price. For renewal plans, this is charged
        # on top of the first renewal_price.
        initial_price:,
        # Private notes visible only to the company owner and team members. Not shown to
        # customers. Null if no notes have been added.
        internal_notes:,
        # The invoice this plan was generated for. Null if the plan was not created for a
        # specific invoice.
        invoice:,
        # The number of users who currently hold an active membership through this plan.
        # Only visible to authorized team members.
        member_count:,
        # The explicit payment method configuration specifying which payment methods are
        # enabled or disabled for this plan. Null if the plan uses default settings.
        payment_method_configuration:,
        # The billing model for this plan: 'renewal' for recurring subscriptions or
        # 'one_time' for single payments.
        plan_type:,
        # The product that this plan belongs to. Null for standalone one-off purchases not
        # linked to a product.
        product:,
        # The full URL where customers can purchase this plan directly, bypassing the
        # product page.
        purchase_url:,
        # The method used to sell this plan: 'buy_now' for immediate purchase or
        # 'waitlist' for waitlist-based access.
        release_method:,
        # The recurring price charged every billing_period in the plan's base_currency
        # (e.g., 9.99 for $9.99/period). Zero for one-time plans.
        renewal_price:,
        # The total number of installment payments required before the subscription
        # pauses. Null if split pay is not configured. Must be greater than 1.
        split_pay_required_payments:,
        # The number of units available for purchase. Only visible to authorized team
        # members. Null if the requester lacks permission.
        stock:,
        # The display name of the plan shown to customers on the product page and at
        # checkout. Maximum 30 characters. Null if no title has been set.
        title:,
        # The number of free trial days before the first charge on a renewal plan. Null if
        # no trial is configured or the current user has already used a trial for this
        # plan.
        trial_period_days:,
        # When true, the plan has unlimited stock (stock field is ignored). When false,
        # purchases are limited by the stock field.
        unlimited_stock:,
        # The datetime the plan was last updated.
        updated_at:,
        # Controls whether the plan is visible to customers. When set to 'hidden', the
        # plan is only accessible via direct link.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            billing_period: T.nilable(Integer),
            company: T.nilable(WhopSDK::Models::PlanListResponse::Company),
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            initial_price: Float,
            internal_notes: T.nilable(String),
            invoice: T.nilable(WhopSDK::Models::PlanListResponse::Invoice),
            member_count: T.nilable(Integer),
            payment_method_configuration:
              T.nilable(
                WhopSDK::Models::PlanListResponse::PaymentMethodConfiguration
              ),
            plan_type: WhopSDK::PlanType::TaggedSymbol,
            product: T.nilable(WhopSDK::Models::PlanListResponse::Product),
            purchase_url: String,
            release_method: WhopSDK::ReleaseMethod::TaggedSymbol,
            renewal_price: Float,
            split_pay_required_payments: T.nilable(Integer),
            stock: T.nilable(Integer),
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
            T.any(
              WhopSDK::Models::PlanListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The display name of the company shown to customers.
        sig { returns(String) }
        attr_accessor :title

        # The company that sells this plan. Null for standalone invoice plans not linked
        # to a company.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the company.
          id:,
          # The display name of the company shown to customers.
          title:
        )
        end

        sig { override.returns({ id: String, title: String }) }
        def to_hash
        end
      end

      class Invoice < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PlanListResponse::Invoice,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the invoice.
        sig { returns(String) }
        attr_accessor :id

        # The invoice this plan was generated for. Null if the plan was not created for a
        # specific invoice.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the invoice.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class PaymentMethodConfiguration < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PlanListResponse::PaymentMethodConfiguration,
              WhopSDK::Internal::AnyHash
            )
          end

        # An array of payment method identifiers that are explicitly disabled. Only
        # applies if the include_platform_defaults is true.
        sig { returns(T::Array[WhopSDK::PaymentMethodTypes::TaggedSymbol]) }
        attr_accessor :disabled

        # An array of payment method identifiers that are explicitly enabled. This means
        # these payment methods will be shown on checkout. Example use case is to only
        # enable a specific payment method like cashapp, or extending the platform
        # defaults with additional methods.
        sig { returns(T::Array[WhopSDK::PaymentMethodTypes::TaggedSymbol]) }
        attr_accessor :enabled

        # Whether Whop's platform default payment method enablement settings are included
        # in this configuration. The full list of default payment methods can be found in
        # the documentation at docs.whop.com/payments.
        sig { returns(T::Boolean) }
        attr_accessor :include_platform_defaults

        # The explicit payment method configuration specifying which payment methods are
        # enabled or disabled for this plan. Null if the plan uses default settings.
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
              disabled: T::Array[WhopSDK::PaymentMethodTypes::TaggedSymbol],
              enabled: T::Array[WhopSDK::PaymentMethodTypes::TaggedSymbol],
              include_platform_defaults: T::Boolean
            }
          )
        end
        def to_hash
        end
      end

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PlanListResponse::Product,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the product.
        sig { returns(String) }
        attr_accessor :id

        # The display name of the product shown to customers on the product page and in
        # search results.
        sig { returns(String) }
        attr_accessor :title

        # The product that this plan belongs to. Null for standalone one-off purchases not
        # linked to a product.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the product.
          id:,
          # The display name of the product shown to customers on the product page and in
          # search results.
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
