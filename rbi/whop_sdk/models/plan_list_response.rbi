# typed: strong

module WhopSDK
  module Models
    class PlanListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::PlanListResponse, WhopSDK::Internal::AnyHash)
        end

      # The internal ID of the plan.
      sig { returns(String) }
      attr_accessor :id

      # The interval at which the plan charges (renewal plans).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :billing_period

      # The company for the plan.
      sig { returns(T.nilable(WhopSDK::Models::PlanListResponse::Company)) }
      attr_reader :company

      sig do
        params(
          company: T.nilable(WhopSDK::Models::PlanListResponse::Company::OrHash)
        ).void
      end
      attr_writer :company

      # When the plan was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The respective currency identifier for the plan.
      sig { returns(WhopSDK::Currency::TaggedSymbol) }
      attr_accessor :currency

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
      sig { returns(T.nilable(WhopSDK::Models::PlanListResponse::Invoice)) }
      attr_reader :invoice

      sig do
        params(
          invoice: T.nilable(WhopSDK::Models::PlanListResponse::Invoice::OrHash)
        ).void
      end
      attr_writer :invoice

      # The number of members for the plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :member_count

      # Indicates if the plan is a one time payment or recurring.
      sig { returns(WhopSDK::PlanType::TaggedSymbol) }
      attr_accessor :plan_type

      # The access pass for the plan.
      sig { returns(T.nilable(WhopSDK::Models::PlanListResponse::Product)) }
      attr_reader :product

      sig do
        params(
          product: T.nilable(WhopSDK::Models::PlanListResponse::Product::OrHash)
        ).void
      end
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

      # The number of units available for purchase. Only displayed to authorized actors
      sig { returns(T.nilable(Integer)) }
      attr_accessor :stock

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
          plan_type: WhopSDK::PlanType::OrSymbol,
          product:
            T.nilable(WhopSDK::Models::PlanListResponse::Product::OrHash),
          purchase_url: String,
          release_method: WhopSDK::ReleaseMethod::OrSymbol,
          renewal_price: Float,
          stock: T.nilable(Integer),
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
        # The company for the plan.
        company:,
        # When the plan was created.
        created_at:,
        # The respective currency identifier for the plan.
        currency:,
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
        # The number of units available for purchase. Only displayed to authorized actors
        stock:,
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
            company: T.nilable(WhopSDK::Models::PlanListResponse::Company),
            created_at: Time,
            currency: WhopSDK::Currency::TaggedSymbol,
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            initial_price: Float,
            internal_notes: T.nilable(String),
            invoice: T.nilable(WhopSDK::Models::PlanListResponse::Invoice),
            member_count: T.nilable(Integer),
            plan_type: WhopSDK::PlanType::TaggedSymbol,
            product: T.nilable(WhopSDK::Models::PlanListResponse::Product),
            purchase_url: String,
            release_method: WhopSDK::ReleaseMethod::TaggedSymbol,
            renewal_price: Float,
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

      class Invoice < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::PlanListResponse::Invoice,
              WhopSDK::Internal::AnyHash
            )
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
            T.any(
              WhopSDK::Models::PlanListResponse::Product,
              WhopSDK::Internal::AnyHash
            )
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
