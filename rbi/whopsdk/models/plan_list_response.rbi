# typed: strong

module Whopsdk
  module Models
    class PlanListResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Whopsdk::Models::PlanListResponse, Whopsdk::Internal::AnyHash)
        end

      # The internal ID of the plan.
      sig { returns(String) }
      attr_accessor :id

      # The interval at which the plan charges (renewal plans).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :billing_period

      # The company for the plan.
      sig { returns(T.nilable(Whopsdk::Models::PlanListResponse::Company)) }
      attr_reader :company

      sig do
        params(
          company: T.nilable(Whopsdk::Models::PlanListResponse::Company::OrHash)
        ).void
      end
      attr_writer :company

      # When the plan was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The available currencies on the platform
      sig { returns(T.nilable(Whopsdk::Currency::TaggedSymbol)) }
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
      sig { returns(T.nilable(Whopsdk::Models::PlanListResponse::Invoice)) }
      attr_reader :invoice

      sig do
        params(
          invoice: T.nilable(Whopsdk::Models::PlanListResponse::Invoice::OrHash)
        ).void
      end
      attr_writer :invoice

      # The number of members for the plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :member_count

      # The type of plan that can be attached to an access pass
      sig { returns(T.nilable(Whopsdk::PlanType::TaggedSymbol)) }
      attr_accessor :plan_type

      # The access pass for the plan.
      sig { returns(T.nilable(Whopsdk::Models::PlanListResponse::Product)) }
      attr_reader :product

      sig do
        params(
          product: T.nilable(Whopsdk::Models::PlanListResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # The direct link to purchase the access pass.
      sig { returns(String) }
      attr_accessor :purchase_link

      # The methods of how a plan can be released.
      sig { returns(T.nilable(Whopsdk::ReleaseMethod::TaggedSymbol)) }
      attr_accessor :release_method

      # The price a person has to pay for a plan on the renewal purchase.
      sig { returns(Float) }
      attr_accessor :renewal_price

      # The number of free trial days added before a renewal plan.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      # When the plan was last updated.
      sig { returns(Integer) }
      attr_accessor :updated_at

      # Visibility of a resource
      sig { returns(T.nilable(Whopsdk::Visibility::TaggedSymbol)) }
      attr_accessor :visibility

      # An object representing a (sanitized) plan of an access pass.
      sig do
        params(
          id: String,
          billing_period: T.nilable(Integer),
          company:
            T.nilable(Whopsdk::Models::PlanListResponse::Company::OrHash),
          created_at: Integer,
          currency: T.nilable(Whopsdk::Currency::OrSymbol),
          description: T.nilable(String),
          expiration_days: T.nilable(Integer),
          initial_price: Float,
          internal_notes: T.nilable(String),
          invoice:
            T.nilable(Whopsdk::Models::PlanListResponse::Invoice::OrHash),
          member_count: T.nilable(Integer),
          plan_type: T.nilable(Whopsdk::PlanType::OrSymbol),
          product:
            T.nilable(Whopsdk::Models::PlanListResponse::Product::OrHash),
          purchase_link: String,
          release_method: T.nilable(Whopsdk::ReleaseMethod::OrSymbol),
          renewal_price: Float,
          trial_period_days: T.nilable(Integer),
          updated_at: Integer,
          visibility: T.nilable(Whopsdk::Visibility::OrSymbol)
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
        # The available currencies on the platform
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
        # The type of plan that can be attached to an access pass
        plan_type:,
        # The access pass for the plan.
        product:,
        # The direct link to purchase the access pass.
        purchase_link:,
        # The methods of how a plan can be released.
        release_method:,
        # The price a person has to pay for a plan on the renewal purchase.
        renewal_price:,
        # The number of free trial days added before a renewal plan.
        trial_period_days:,
        # When the plan was last updated.
        updated_at:,
        # Visibility of a resource
        visibility:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            billing_period: T.nilable(Integer),
            company: T.nilable(Whopsdk::Models::PlanListResponse::Company),
            created_at: Integer,
            currency: T.nilable(Whopsdk::Currency::TaggedSymbol),
            description: T.nilable(String),
            expiration_days: T.nilable(Integer),
            initial_price: Float,
            internal_notes: T.nilable(String),
            invoice: T.nilable(Whopsdk::Models::PlanListResponse::Invoice),
            member_count: T.nilable(Integer),
            plan_type: T.nilable(Whopsdk::PlanType::TaggedSymbol),
            product: T.nilable(Whopsdk::Models::PlanListResponse::Product),
            purchase_link: String,
            release_method: T.nilable(Whopsdk::ReleaseMethod::TaggedSymbol),
            renewal_price: Float,
            trial_period_days: T.nilable(Integer),
            updated_at: Integer,
            visibility: T.nilable(Whopsdk::Visibility::TaggedSymbol)
          }
        )
      end
      def to_hash
      end

      class Company < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::PlanListResponse::Company,
              Whopsdk::Internal::AnyHash
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

      class Invoice < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::PlanListResponse::Invoice,
              Whopsdk::Internal::AnyHash
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

      class Product < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Whopsdk::Models::PlanListResponse::Product,
              Whopsdk::Internal::AnyHash
            )
          end

        # The internal ID of the public access pass.
        sig { returns(String) }
        attr_accessor :id

        # The title of the access pass. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The access pass for the plan.
        sig { params(id: String, title: String).returns(T.attached_class) }
        def self.new(
          # The internal ID of the public access pass.
          id:,
          # The title of the access pass. Use for Whop 4.0.
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
