# typed: strong

module Whopsdk
  module Models
    class CheckoutConfigurationListResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::CheckoutConfigurationListResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # The ID of the checkout session
      sig { returns(String) }
      attr_accessor :id

      # The affiliate code to use for the checkout session
      sig { returns(String) }
      attr_accessor :affiliate_code

      # The ID of the company to use for the checkout session
      sig { returns(String) }
      attr_accessor :company_id

      # The metadata to use for the checkout session
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :metadata

      # The plan to use for the checkout session
      sig { returns(Whopsdk::Models::CheckoutConfigurationListResponse::Plan) }
      attr_reader :plan

      sig do
        params(
          plan: Whopsdk::Models::CheckoutConfigurationListResponse::Plan::OrHash
        ).void
      end
      attr_writer :plan

      # The URL to redirect the user to after the checkout session is created
      sig { returns(String) }
      attr_accessor :purchase_url

      # The URL to redirect the user to after the checkout session is created
      sig { returns(String) }
      attr_accessor :redirect_url

      # A checkout session
      sig do
        params(
          id: String,
          affiliate_code: String,
          company_id: String,
          metadata: T::Hash[Symbol, T.anything],
          plan:
            Whopsdk::Models::CheckoutConfigurationListResponse::Plan::OrHash,
          purchase_url: String,
          redirect_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the checkout session
        id:,
        # The affiliate code to use for the checkout session
        affiliate_code:,
        # The ID of the company to use for the checkout session
        company_id:,
        # The metadata to use for the checkout session
        metadata:,
        # The plan to use for the checkout session
        plan:,
        # The URL to redirect the user to after the checkout session is created
        purchase_url:,
        # The URL to redirect the user to after the checkout session is created
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
            plan: Whopsdk::Models::CheckoutConfigurationListResponse::Plan,
            purchase_url: String,
            redirect_url: String
          }
        )
      end
      def to_hash
      end

      class Plan < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::CheckoutConfigurationListResponse::Plan,
              Whopsdk::Internal::AnyHash
            )
          end

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The interval at which the plan charges (renewal plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :billing_period

        # The respective currency identifier for the plan.
        sig { returns(Whopsdk::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The interval at which the plan charges (expiration plans).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expiration_days

        # The price a person has to pay for a plan on the initial purchase.
        sig { returns(Float) }
        attr_accessor :initial_price

        # Indicates if the plan is a one time payment or recurring.
        sig { returns(Whopsdk::PlanType::TaggedSymbol) }
        attr_accessor :plan_type

        # This is the release method the business uses to sell this plan.
        sig { returns(Whopsdk::ReleaseMethod::TaggedSymbol) }
        attr_accessor :release_method

        # The price a person has to pay for a plan on the renewal purchase.
        sig { returns(Float) }
        attr_accessor :renewal_price

        # The number of free trial days added before a renewal plan.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days

        # Shows or hides the plan from public/business view.
        sig { returns(Whopsdk::Visibility::TaggedSymbol) }
        attr_accessor :visibility

        # The plan to use for the checkout session
        sig do
          params(
            id: String,
            billing_period: T.nilable(Integer),
            currency: Whopsdk::Currency::OrSymbol,
            expiration_days: T.nilable(Integer),
            initial_price: Float,
            plan_type: Whopsdk::PlanType::OrSymbol,
            release_method: Whopsdk::ReleaseMethod::OrSymbol,
            renewal_price: Float,
            trial_period_days: T.nilable(Integer),
            visibility: Whopsdk::Visibility::OrSymbol
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
              currency: Whopsdk::Currency::TaggedSymbol,
              expiration_days: T.nilable(Integer),
              initial_price: Float,
              plan_type: Whopsdk::PlanType::TaggedSymbol,
              release_method: Whopsdk::ReleaseMethod::TaggedSymbol,
              renewal_price: Float,
              trial_period_days: T.nilable(Integer),
              visibility: Whopsdk::Visibility::TaggedSymbol
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
