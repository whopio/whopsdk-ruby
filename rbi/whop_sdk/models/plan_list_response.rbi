# typed: strong

module WhopSDK
  module Models
    class PlanListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::PlanListResponse, WhopSDK::Internal::AnyHash)
        end

      # The ID of the plan, which will look like plan\_******\*******
      sig { returns(String) }
      attr_accessor :id

      # Whether this plan accepts local currency payments via adaptive pricing
      sig { returns(T::Boolean) }
      attr_accessor :adaptive_pricing_enabled

      # The number of days between recurring charges. Null for one-time plans
      sig { returns(T.nilable(Float)) }
      attr_accessor :billing_period

      # The company that sells this plan, an object with an id and title. Null for
      # standalone invoice plans
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :company

      # When the plan was created, as an ISO 8601 timestamp
      sig { returns(String) }
      attr_accessor :created_at

      # The three-letter ISO currency code all prices on this plan are denominated in
      sig { returns(String) }
      attr_accessor :currency

      # A text description of the plan visible to customers
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The number of days until the membership expires, for expiration-based plans
      sig { returns(T.nilable(Float)) }
      attr_accessor :expiration_days

      # The initial purchase price in the plan's currency
      sig { returns(Float) }
      attr_accessor :initial_price

      # Private notes visible only to authorized team members
      sig { returns(T.nilable(String)) }
      attr_accessor :internal_notes

      # The invoice this plan was generated for, an object with an id. Null unless the
      # plan was created for an invoice
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :invoice

      # The number of active memberships on this plan. Only visible to authorized team
      # members
      sig { returns(T.nilable(Float)) }
      attr_accessor :member_count

      # Custom key-value pairs stored on the plan
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      # The explicit payment method configuration for the plan, an object with enabled,
      # disabled and include_platform_defaults. Null if the plan uses default settings
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :payment_method_configuration

      # The billing model for this plan: 'renewal' for recurring subscriptions or
      # 'one_time' for single payments
      sig { returns(String) }
      attr_accessor :plan_type

      # The product this plan belongs to, an object with an id and title. Null for
      # standalone plans
      sig { returns(T.nilable(T.anything)) }
      attr_accessor :product

      # The full URL where customers can purchase this plan directly
      sig { returns(String) }
      attr_accessor :purchase_url

      # The method used to sell this plan, e.g. 'buy_now' or 'waitlist'
      sig { returns(String) }
      attr_accessor :release_method

      # The recurring price charged every billing period in the plan's currency
      sig { returns(Float) }
      attr_accessor :renewal_price

      # The number of installment payments required before the subscription pauses
      sig { returns(T.nilable(Float)) }
      attr_accessor :split_pay_required_payments

      # The number of units available for purchase. Only visible to authorized team
      # members
      sig { returns(T.nilable(Float)) }
      attr_accessor :stock

      # The 3D Secure behavior for this plan. Null means the plan inherits the account
      # default
      sig { returns(T.nilable(String)) }
      attr_accessor :three_ds_level

      # The display name of the plan shown to customers
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The number of free trial days before the first charge on a recurring plan
      sig { returns(T.nilable(Float)) }
      attr_accessor :trial_period_days

      # Whether the plan has unlimited stock
      sig { returns(T::Boolean) }
      attr_accessor :unlimited_stock

      # When the plan was last updated, as an ISO 8601 timestamp
      sig { returns(String) }
      attr_accessor :updated_at

      # Whether the plan is visible to customers or hidden from public view
      sig { returns(String) }
      attr_accessor :visibility

      sig do
        params(
          id: String,
          adaptive_pricing_enabled: T::Boolean,
          billing_period: T.nilable(Float),
          company: T.nilable(T.anything),
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
        # The ID of the plan, which will look like plan\_******\*******
        id:,
        # Whether this plan accepts local currency payments via adaptive pricing
        adaptive_pricing_enabled:,
        # The number of days between recurring charges. Null for one-time plans
        billing_period:,
        # The company that sells this plan, an object with an id and title. Null for
        # standalone invoice plans
        company:,
        # When the plan was created, as an ISO 8601 timestamp
        created_at:,
        # The three-letter ISO currency code all prices on this plan are denominated in
        currency:,
        # A text description of the plan visible to customers
        description:,
        # The number of days until the membership expires, for expiration-based plans
        expiration_days:,
        # The initial purchase price in the plan's currency
        initial_price:,
        # Private notes visible only to authorized team members
        internal_notes:,
        # The invoice this plan was generated for, an object with an id. Null unless the
        # plan was created for an invoice
        invoice:,
        # The number of active memberships on this plan. Only visible to authorized team
        # members
        member_count:,
        # Custom key-value pairs stored on the plan
        metadata:,
        # The explicit payment method configuration for the plan, an object with enabled,
        # disabled and include_platform_defaults. Null if the plan uses default settings
        payment_method_configuration:,
        # The billing model for this plan: 'renewal' for recurring subscriptions or
        # 'one_time' for single payments
        plan_type:,
        # The product this plan belongs to, an object with an id and title. Null for
        # standalone plans
        product:,
        # The full URL where customers can purchase this plan directly
        purchase_url:,
        # The method used to sell this plan, e.g. 'buy_now' or 'waitlist'
        release_method:,
        # The recurring price charged every billing period in the plan's currency
        renewal_price:,
        # The number of installment payments required before the subscription pauses
        split_pay_required_payments:,
        # The number of units available for purchase. Only visible to authorized team
        # members
        stock:,
        # The 3D Secure behavior for this plan. Null means the plan inherits the account
        # default
        three_ds_level:,
        # The display name of the plan shown to customers
        title:,
        # The number of free trial days before the first charge on a recurring plan
        trial_period_days:,
        # Whether the plan has unlimited stock
        unlimited_stock:,
        # When the plan was last updated, as an ISO 8601 timestamp
        updated_at:,
        # Whether the plan is visible to customers or hidden from public view
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adaptive_pricing_enabled: T::Boolean,
            billing_period: T.nilable(Float),
            company: T.nilable(T.anything),
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
