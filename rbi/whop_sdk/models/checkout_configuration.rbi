# typed: strong

module WhopSDK
  module Models
    class CheckoutConfiguration < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::CheckoutConfiguration, WhopSDK::Internal::AnyHash)
        end

      # The ID of the checkout configuration
      sig { returns(String) }
      attr_accessor :id

      # The affiliate code to use for the checkout configuration
      sig { returns(String) }
      attr_accessor :affiliate_code

      # The ID of the company to use for the checkout configuration
      sig { returns(String) }
      attr_accessor :company_id

      # The metadata to use for the checkout configuration
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :metadata

      # The plan to use for the checkout configuration
      sig { returns(WhopSDK::CheckoutConfiguration::Plan) }
      attr_reader :plan

      sig { params(plan: WhopSDK::CheckoutConfiguration::Plan::OrHash).void }
      attr_writer :plan

      # The URL to redirect the user to after the checkout configuration is created
      sig { returns(String) }
      attr_accessor :purchase_url

      # The URL to redirect the user to after the checkout configuration is created
      sig { returns(String) }
      attr_accessor :redirect_url

      # A checkout configuration object. Can be used to create a reusable custom
      # configuration for a checkout, including attaching plans, affiliates and custom
      # metadata to the checkout. This configuration can be re-used by multiple users.
      # All successful payments and memberships resulting from a checkout will contain
      # the passed metadata.
      sig do
        params(
          id: String,
          affiliate_code: String,
          company_id: String,
          metadata: T::Hash[Symbol, T.anything],
          plan: WhopSDK::CheckoutConfiguration::Plan::OrHash,
          purchase_url: String,
          redirect_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the checkout configuration
        id:,
        # The affiliate code to use for the checkout configuration
        affiliate_code:,
        # The ID of the company to use for the checkout configuration
        company_id:,
        # The metadata to use for the checkout configuration
        metadata:,
        # The plan to use for the checkout configuration
        plan:,
        # The URL to redirect the user to after the checkout configuration is created
        purchase_url:,
        # The URL to redirect the user to after the checkout configuration is created
        redirect_url:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            affiliate_code: String,
            company_id: String,
            metadata: T::Hash[Symbol, T.anything],
            plan: WhopSDK::CheckoutConfiguration::Plan,
            purchase_url: String,
            redirect_url: String
          }
        )
      end
      def to_hash
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CheckoutConfiguration::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The interval at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # The respective currency identifier for the plan.
        sig { returns(WhopSDK::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The interval at which the plan charges (expiration plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # The price a person has to pay for a plan on the initial purchase.
        sig { returns(Float) }
        attr_accessor :initial_price

        # Indicates if the plan is a one time payment or recurring.
        sig { returns(WhopSDK::PlanType::TaggedSymbol) }
        attr_accessor :plan_type

        # This is the release method the business uses to sell this plan.
        sig { returns(WhopSDK::ReleaseMethod::TaggedSymbol) }
        attr_accessor :release_method

        # The price a person has to pay for a plan on the renewal purchase.
        sig { returns(Float) }
        attr_accessor :renewal_price

        # The number of free trial days added before a renewal plan.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Shows or hides the plan from public/business view.
        sig { returns(WhopSDK::Visibility::TaggedSymbol) }
        attr_accessor :visibility

        # The plan to use for the checkout configuration
        sig do
          params(
            id: String,
            billing_period: T.nilable(Integer),
            currency: WhopSDK::Currency::OrSymbol,
            expiration_days: T.nilable(Integer),
            initial_price: Float,
            plan_type: WhopSDK::PlanType::OrSymbol,
            release_method: WhopSDK::ReleaseMethod::OrSymbol,
            renewal_price: Float,
            trial_period_days: T.nilable(Integer),
            visibility: WhopSDK::Visibility::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the plan.
          id:,
          # The interval at which the plan charges (renewal plans).
          billing_period:,
          # The respective currency identifier for the plan.
          currency:,
          # The interval at which the plan charges (expiration plans).
          expiration_days:,
          # The price a person has to pay for a plan on the initial purchase.
          initial_price:,
          # Indicates if the plan is a one time payment or recurring.
          plan_type:,
          # This is the release method the business uses to sell this plan.
          release_method:,
          # The price a person has to pay for a plan on the renewal purchase.
          renewal_price:,
          # The number of free trial days added before a renewal plan.
          trial_period_days:,
          # Shows or hides the plan from public/business view.
          visibility:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              billing_period: T.nilable(Integer),
              currency: WhopSDK::Currency::TaggedSymbol,
              expiration_days: T.nilable(Integer),
              initial_price: Float,
              plan_type: WhopSDK::PlanType::TaggedSymbol,
              release_method: WhopSDK::ReleaseMethod::TaggedSymbol,
              renewal_price: Float,
              trial_period_days: T.nilable(Integer),
              visibility: WhopSDK::Visibility::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
