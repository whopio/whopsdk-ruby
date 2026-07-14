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
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :account

      # Whether this plan accepts local currency payments via adaptive pricing.
      sig { returns(T::Boolean) }
      attr_accessor :adaptive_pricing_enabled

      # Recurring billing interval in days, such as 30 for monthly or 365 for annual.
      # `null` for one-time plans.
      sig { returns(T.nilable(Float)) }
      attr_accessor :billing_period

      # When the plan was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # Three-letter ISO currency code for this plan's prices.
      sig { returns(String) }
      attr_accessor :currency

      # Customer-visible plan description.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Access duration in days for expiration-based plans.
      sig { returns(T.nilable(Float)) }
      attr_accessor :expiration_days

      # Initial purchase price in plan currency.
      sig { returns(Float) }
      attr_accessor :initial_price

      # Private notes visible only to authorized team members.
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # Invoice this plan was generated for; `null` unless created for an invoice.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :invoice

      # Active memberships through this plan, when visible to the requester.
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_count

      # Custom key-value pairs stored on the plan.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # Payment method configuration (`enabled`, `disabled`,
      # `include_platform_defaults`); `null` when plan uses default settings.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :payment_method_configuration

      # Billing model for this plan: `renewal` (recurring) or `one_time` (single
      # payment).
      sig { returns(String) }
      attr_accessor :plan_type

      # Product this plan belongs to; `null` for standalone plans.
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :product

      # URL where customers can purchase this plan directly.
      sig { returns(String) }
      attr_accessor :purchase_url

      # Sales method for this plan, such as `buy_now` or `waitlist`.
      sig { returns(String) }
      attr_accessor :release_method

      # Recurring price charged every billing period.
      sig { returns(Float) }
      attr_accessor :renewal_price

      # Installment payments required before the subscription pauses.
      sig { returns(T.nilable(Float)) }
      attr_accessor :split_pay_required_payments

      # Units available for purchase, when visible to the requester.
      sig { returns(T.nilable(Float)) }
      attr_accessor :stock

      # 3D Secure behavior for this plan; `null` inherits account default.
      sig { returns(T.nilable(String)) }
      attr_accessor :three_ds_level

      # Plan display name shown to customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # Free trial days before the first renewal charge. `null` if no trial is
      # configured or the user has already used a trial for this plan.
      sig { returns(T.nilable(Float)) }
      attr_accessor :trial_period_days

      # Whether the plan has unlimited stock.
      sig { returns(T::Boolean) }
      attr_accessor :unlimited_stock

      # When the plan was last updated, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :updated_at

      # Whether the plan is visible to customers or hidden from public view.
      sig { returns(String) }
      attr_accessor :visibility

      sig do
        params(
          id: String,
          account: T.nilable(T.anything),
          adaptive_pricing_enabled: T::Boolean,
          billing_period: T.nilable(Float),
          created_at: String,
          currency: String,
          description: T.nilable(String),
          expiration_days: T.nilable(Float),
          initial_price: Float,
          internal_notes: T.nilable(String),
          invoice: T.nilable(T.anything),
          member_count: T.nilable(Float),
          metadata: T.nilable(T.anything),
          payment_method_configuration: T.nilable(T.anything),
          plan_type: String,
          product: T.nilable(T.anything),
          purchase_url: String,
          release_method: String,
          renewal_price: Float,
          split_pay_required_payments: T.nilable(Float),
          stock: T.nilable(Float),
          three_ds_level: T.nilable(String),
          title: T.nilable(String),
          trial_period_days: T.nilable(Float),
          unlimited_stock: T::Boolean,
          updated_at: String,
          visibility: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Plan ID, prefixed `plan_`.
        id:,
        # Account that sells this plan; `null` for standalone invoice plans.
        account:,
        # Whether this plan accepts local currency payments via adaptive pricing.
        adaptive_pricing_enabled:,
        # Recurring billing interval in days, such as 30 for monthly or 365 for annual.
        # `null` for one-time plans.
        billing_period:,
        # When the plan was created, as an ISO 8601 timestamp.
        created_at:,
        # Three-letter ISO currency code for this plan's prices.
        currency:,
        # Customer-visible plan description.
        description:,
        # Access duration in days for expiration-based plans.
        expiration_days:,
        # Initial purchase price in plan currency.
        initial_price:,
        # Private notes visible only to authorized team members.
        internal_notes:,
        # Invoice this plan was generated for; `null` unless created for an invoice.
        invoice:,
        # Active memberships through this plan, when visible to the requester.
        member_count:,
        # Custom key-value pairs stored on the plan.
        metadata:,
        # Payment method configuration (`enabled`, `disabled`,
        # `include_platform_defaults`); `null` when plan uses default settings.
        payment_method_configuration:,
        # Billing model for this plan: `renewal` (recurring) or `one_time` (single
        # payment).
        plan_type:,
        # Product this plan belongs to; `null` for standalone plans.
        product:,
        # URL where customers can purchase this plan directly.
        purchase_url:,
        # Sales method for this plan, such as `buy_now` or `waitlist`.
        release_method:,
        # Recurring price charged every billing period.
        renewal_price:,
        # Installment payments required before the subscription pauses.
        split_pay_required_payments:,
        # Units available for purchase, when visible to the requester.
        stock:,
        # 3D Secure behavior for this plan; `null` inherits account default.
        three_ds_level:,
        # Plan display name shown to customers.
        title:,
        # Free trial days before the first renewal charge. `null` if no trial is
        # configured or the user has already used a trial for this plan.
        trial_period_days:,
        # Whether the plan has unlimited stock.
        unlimited_stock:,
        # When the plan was last updated, as an ISO 8601 timestamp.
        updated_at:,
        # Whether the plan is visible to customers or hidden from public view.
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account: T.nilable(T.anything),
            adaptive_pricing_enabled: T::Boolean,
            billing_period: T.nilable(Float),
            created_at: String,
            currency: String,
            description: T.nilable(String),
            expiration_days: T.nilable(Float),
            initial_price: Float,
            internal_notes: T.nilable(String),
            invoice: T.nilable(T.anything),
            member_count: T.nilable(Float),
            metadata: T.nilable(T.anything),
            payment_method_configuration: T.nilable(T.anything),
            plan_type: String,
            product: T.nilable(T.anything),
            purchase_url: String,
            release_method: String,
            renewal_price: Float,
            split_pay_required_payments: T.nilable(Float),
            stock: T.nilable(Float),
            three_ds_level: T.nilable(String),
            title: T.nilable(String),
            trial_period_days: T.nilable(Float),
            unlimited_stock: T::Boolean,
            updated_at: String,
            visibility: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
