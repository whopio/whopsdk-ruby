# typed: strong

module Whopsdk
  module Models
    class Membership < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Whopsdk::Membership, Whopsdk::Internal::AnyHash) }

      # The ID of the membership
      sig { returns(String) }
      attr_accessor :id

      # Whether this Membership is set to cancel at the end of the current billing
      # cycle. Only applies for memberships that have a renewal plan.
      sig { returns(T::Boolean) }
      attr_accessor :cancel_at_period_end

      # The epoch timestamp of when the customer initiated a cancellation.
      sig { returns(T.nilable(Time)) }
      attr_accessor :canceled_at

      # The reason that the member canceled the membership (filled out by the member).
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_reason

      # The Company this Membership belongs to.
      sig { returns(Whopsdk::Membership::Company) }
      attr_reader :company

      sig { params(company: Whopsdk::Membership::Company::OrHash).void }
      attr_writer :company

      # The timestamp, in seconds, that this Membership was created at.
      sig { returns(Time) }
      attr_accessor :created_at

      # The available currencies on the platform
      sig { returns(T.nilable(Whopsdk::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # The license key for this Membership. This is only present if the membership
      # grants access to an instance of the Whop Software app.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key

      # The URL for the customer to manage their membership.
      sig { returns(T.nilable(String)) }
      attr_accessor :manage_url

      # The Member that this Membership belongs to.
      sig { returns(T.nilable(Whopsdk::Membership::Member)) }
      attr_reader :member

      sig do
        params(member: T.nilable(Whopsdk::Membership::Member::OrHash)).void
      end
      attr_writer :member

      # A JSON object used to store software licensing information. Ex. HWID
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :metadata

      # Whether the membership's payments are currently paused.
      sig { returns(T::Boolean) }
      attr_accessor :payment_collection_paused

      # The Plan this Membership is for.
      sig { returns(Whopsdk::Membership::Plan) }
      attr_reader :plan

      sig { params(plan: Whopsdk::Membership::Plan::OrHash).void }
      attr_writer :plan

      # The Promo Code that is currently applied to this Membership.
      sig { returns(T.nilable(Whopsdk::Membership::PromoCode)) }
      attr_reader :promo_code

      sig do
        params(
          promo_code: T.nilable(Whopsdk::Membership::PromoCode::OrHash)
        ).void
      end
      attr_writer :promo_code

      # The timestamp in seconds at which the current billing cycle for this
      # subscription ends. Only applies for memberships that have a renewal plan.
      sig { returns(T.nilable(Time)) }
      attr_accessor :renewal_period_end

      # The timestamp in seconds at which the current billing cycle for this
      # subscription start. Only applies for memberships that have a renewal plan.
      sig { returns(T.nilable(Time)) }
      attr_accessor :renewal_period_start

      # The status of the membership.
      sig { returns(Whopsdk::MembershipStatus::TaggedSymbol) }
      attr_accessor :status

      # A timestamp of when the membership was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user this membership belongs to
      sig { returns(T.nilable(Whopsdk::Membership::User)) }
      attr_reader :user

      sig { params(user: T.nilable(Whopsdk::Membership::User::OrHash)).void }
      attr_writer :user

      # A membership represents a purchase between a User and a Company for a specific
      # Product.
      sig do
        params(
          id: String,
          cancel_at_period_end: T::Boolean,
          canceled_at: T.nilable(Time),
          cancellation_reason: T.nilable(String),
          company: Whopsdk::Membership::Company::OrHash,
          created_at: Time,
          currency: T.nilable(Whopsdk::Currency::OrSymbol),
          license_key: T.nilable(String),
          manage_url: T.nilable(String),
          member: T.nilable(Whopsdk::Membership::Member::OrHash),
          metadata: T::Hash[Symbol, T.anything],
          payment_collection_paused: T::Boolean,
          plan: Whopsdk::Membership::Plan::OrHash,
          promo_code: T.nilable(Whopsdk::Membership::PromoCode::OrHash),
          renewal_period_end: T.nilable(Time),
          renewal_period_start: T.nilable(Time),
          status: Whopsdk::MembershipStatus::OrSymbol,
          updated_at: Time,
          user: T.nilable(Whopsdk::Membership::User::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the membership
        id:,
        # Whether this Membership is set to cancel at the end of the current billing
        # cycle. Only applies for memberships that have a renewal plan.
        cancel_at_period_end:,
        # The epoch timestamp of when the customer initiated a cancellation.
        canceled_at:,
        # The reason that the member canceled the membership (filled out by the member).
        cancellation_reason:,
        # The Company this Membership belongs to.
        company:,
        # The timestamp, in seconds, that this Membership was created at.
        created_at:,
        # The available currencies on the platform
        currency:,
        # The license key for this Membership. This is only present if the membership
        # grants access to an instance of the Whop Software app.
        license_key:,
        # The URL for the customer to manage their membership.
        manage_url:,
        # The Member that this Membership belongs to.
        member:,
        # A JSON object used to store software licensing information. Ex. HWID
        metadata:,
        # Whether the membership's payments are currently paused.
        payment_collection_paused:,
        # The Plan this Membership is for.
        plan:,
        # The Promo Code that is currently applied to this Membership.
        promo_code:,
        # The timestamp in seconds at which the current billing cycle for this
        # subscription ends. Only applies for memberships that have a renewal plan.
        renewal_period_end:,
        # The timestamp in seconds at which the current billing cycle for this
        # subscription start. Only applies for memberships that have a renewal plan.
        renewal_period_start:,
        # The status of the membership.
        status:,
        # A timestamp of when the membership was last updated
        updated_at:,
        # The user this membership belongs to
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cancel_at_period_end: T::Boolean,
            canceled_at: T.nilable(Time),
            cancellation_reason: T.nilable(String),
            company: Whopsdk::Membership::Company,
            created_at: Time,
            currency: T.nilable(Whopsdk::Currency::TaggedSymbol),
            license_key: T.nilable(String),
            manage_url: T.nilable(String),
            member: T.nilable(Whopsdk::Membership::Member),
            metadata: T::Hash[Symbol, T.anything],
            payment_collection_paused: T::Boolean,
            plan: Whopsdk::Membership::Plan,
            promo_code: T.nilable(Whopsdk::Membership::PromoCode),
            renewal_period_end: T.nilable(Time),
            renewal_period_start: T.nilable(Time),
            status: Whopsdk::MembershipStatus::TaggedSymbol,
            updated_at: Time,
            user: T.nilable(Whopsdk::Membership::User)
          }
        )
      end
      def to_hash
      end

      class Company < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Membership::Company, Whopsdk::Internal::AnyHash)
          end

        # The ID (tag) of the company.
        sig { returns(String) }
        attr_accessor :id

        # The title of the company.
        sig { returns(String) }
        attr_accessor :title

        # The Company this Membership belongs to.
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

      class Member < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Membership::Member, Whopsdk::Internal::AnyHash)
          end

        # The ID of the member
        sig { returns(String) }
        attr_accessor :id

        # The Member that this Membership belongs to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of the member
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Plan < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Membership::Plan, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The Plan this Membership is for.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The internal ID of the plan.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class PromoCode < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Membership::PromoCode, Whopsdk::Internal::AnyHash)
          end

        # The ID of the promo.
        sig { returns(String) }
        attr_accessor :id

        # The Promo Code that is currently applied to this Membership.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of the promo.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class User < Whopsdk::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Whopsdk::Membership::User, Whopsdk::Internal::AnyHash)
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user this membership belongs to
        sig do
          params(id: String, name: T.nilable(String), username: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The internal ID of the user.
          id:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
          username:
        )
        end

        sig do
          override.returns(
            { id: String, name: T.nilable(String), username: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
