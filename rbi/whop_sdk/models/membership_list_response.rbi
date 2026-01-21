# typed: strong

module WhopSDK
  module Models
    class MembershipListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::MembershipListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The ID of the membership
      sig { returns(String) }
      attr_accessor :id

      # Whether this Membership is set to cancel at the end of the current billing
      # cycle. Only applies for memberships that have a renewal plan.
      sig { returns(T::Boolean) }
      attr_accessor :cancel_at_period_end

      # The different reasons a user can choose for why they are canceling their
      # membership.
      sig do
        returns(
          T.nilable(
            WhopSDK::Models::MembershipListResponse::CancelOption::TaggedSymbol
          )
        )
      end
      attr_accessor :cancel_option

      # The epoch timestamp of when the customer initiated a cancellation.
      sig { returns(T.nilable(Time)) }
      attr_accessor :canceled_at

      # The reason that the member canceled the membership (filled out by the member).
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_reason

      # The Company this Membership belongs to.
      sig { returns(WhopSDK::Models::MembershipListResponse::Company) }
      attr_reader :company

      sig do
        params(
          company: WhopSDK::Models::MembershipListResponse::Company::OrHash
        ).void
      end
      attr_writer :company

      # The timestamp, in seconds, that this Membership was created at.
      sig { returns(Time) }
      attr_accessor :created_at

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # The license key for this Membership. This is only present if the membership
      # grants access to an instance of the Whop Software app.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key

      # The URL for the customer to manage their membership.
      sig { returns(T.nilable(String)) }
      attr_accessor :manage_url

      # The Member that this Membership belongs to.
      sig do
        returns(T.nilable(WhopSDK::Models::MembershipListResponse::Member))
      end
      attr_reader :member

      sig do
        params(
          member:
            T.nilable(WhopSDK::Models::MembershipListResponse::Member::OrHash)
        ).void
      end
      attr_writer :member

      # A JSON object used to store software licensing information. Ex. HWID
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :metadata

      # Whether the membership's payments are currently paused.
      sig { returns(T::Boolean) }
      attr_accessor :payment_collection_paused

      # The Plan this Membership is for.
      sig { returns(WhopSDK::Models::MembershipListResponse::Plan) }
      attr_reader :plan

      sig do
        params(plan: WhopSDK::Models::MembershipListResponse::Plan::OrHash).void
      end
      attr_writer :plan

      # The Product this Membership grants access to.
      sig { returns(WhopSDK::Models::MembershipListResponse::Product) }
      attr_reader :product

      sig do
        params(
          product: WhopSDK::Models::MembershipListResponse::Product::OrHash
        ).void
      end
      attr_writer :product

      # The Promo Code that is currently applied to this Membership.
      sig do
        returns(T.nilable(WhopSDK::Models::MembershipListResponse::PromoCode))
      end
      attr_reader :promo_code

      sig do
        params(
          promo_code:
            T.nilable(
              WhopSDK::Models::MembershipListResponse::PromoCode::OrHash
            )
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
      sig { returns(WhopSDK::MembershipStatus::TaggedSymbol) }
      attr_accessor :status

      # A timestamp of when the membership was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user this membership belongs to
      sig { returns(T.nilable(WhopSDK::Models::MembershipListResponse::User)) }
      attr_reader :user

      sig do
        params(
          user: T.nilable(WhopSDK::Models::MembershipListResponse::User::OrHash)
        ).void
      end
      attr_writer :user

      # A membership represents a purchase between a User and a Company for a specific
      # Product.
      sig do
        params(
          id: String,
          cancel_at_period_end: T::Boolean,
          cancel_option:
            T.nilable(
              WhopSDK::Models::MembershipListResponse::CancelOption::OrSymbol
            ),
          canceled_at: T.nilable(Time),
          cancellation_reason: T.nilable(String),
          company: WhopSDK::Models::MembershipListResponse::Company::OrHash,
          created_at: Time,
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          license_key: T.nilable(String),
          manage_url: T.nilable(String),
          member:
            T.nilable(WhopSDK::Models::MembershipListResponse::Member::OrHash),
          metadata: T::Hash[Symbol, T.anything],
          payment_collection_paused: T::Boolean,
          plan: WhopSDK::Models::MembershipListResponse::Plan::OrHash,
          product: WhopSDK::Models::MembershipListResponse::Product::OrHash,
          promo_code:
            T.nilable(
              WhopSDK::Models::MembershipListResponse::PromoCode::OrHash
            ),
          renewal_period_end: T.nilable(Time),
          renewal_period_start: T.nilable(Time),
          status: WhopSDK::MembershipStatus::OrSymbol,
          updated_at: Time,
          user: T.nilable(WhopSDK::Models::MembershipListResponse::User::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the membership
        id:,
        # Whether this Membership is set to cancel at the end of the current billing
        # cycle. Only applies for memberships that have a renewal plan.
        cancel_at_period_end:,
        # The different reasons a user can choose for why they are canceling their
        # membership.
        cancel_option:,
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
        # The Product this Membership grants access to.
        product:,
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
            cancel_option:
              T.nilable(
                WhopSDK::Models::MembershipListResponse::CancelOption::TaggedSymbol
              ),
            canceled_at: T.nilable(Time),
            cancellation_reason: T.nilable(String),
            company: WhopSDK::Models::MembershipListResponse::Company,
            created_at: Time,
            currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
            license_key: T.nilable(String),
            manage_url: T.nilable(String),
            member: T.nilable(WhopSDK::Models::MembershipListResponse::Member),
            metadata: T::Hash[Symbol, T.anything],
            payment_collection_paused: T::Boolean,
            plan: WhopSDK::Models::MembershipListResponse::Plan,
            product: WhopSDK::Models::MembershipListResponse::Product,
            promo_code:
              T.nilable(WhopSDK::Models::MembershipListResponse::PromoCode),
            renewal_period_end: T.nilable(Time),
            renewal_period_start: T.nilable(Time),
            status: WhopSDK::MembershipStatus::TaggedSymbol,
            updated_at: Time,
            user: T.nilable(WhopSDK::Models::MembershipListResponse::User)
          }
        )
      end
      def to_hash
      end

      # The different reasons a user can choose for why they are canceling their
      # membership.
      module CancelOption
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::MembershipListResponse::CancelOption)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOO_EXPENSIVE =
          T.let(
            :too_expensive,
            WhopSDK::Models::MembershipListResponse::CancelOption::TaggedSymbol
          )
        SWITCHING =
          T.let(
            :switching,
            WhopSDK::Models::MembershipListResponse::CancelOption::TaggedSymbol
          )
        MISSING_FEATURES =
          T.let(
            :missing_features,
            WhopSDK::Models::MembershipListResponse::CancelOption::TaggedSymbol
          )
        TECHNICAL_ISSUES =
          T.let(
            :technical_issues,
            WhopSDK::Models::MembershipListResponse::CancelOption::TaggedSymbol
          )
        BAD_EXPERIENCE =
          T.let(
            :bad_experience,
            WhopSDK::Models::MembershipListResponse::CancelOption::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            WhopSDK::Models::MembershipListResponse::CancelOption::TaggedSymbol
          )
        TESTING =
          T.let(
            :testing,
            WhopSDK::Models::MembershipListResponse::CancelOption::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::MembershipListResponse::CancelOption::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MembershipListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
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

      class Member < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MembershipListResponse::Member,
              WhopSDK::Internal::AnyHash
            )
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

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MembershipListResponse::Plan,
              WhopSDK::Internal::AnyHash
            )
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

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MembershipListResponse::Product,
              WhopSDK::Internal::AnyHash
            )
          end

        # The internal ID of the public product.
        sig { returns(String) }
        attr_accessor :id

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The Product this Membership grants access to.
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

      class PromoCode < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MembershipListResponse::PromoCode,
              WhopSDK::Internal::AnyHash
            )
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

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MembershipListResponse::User,
              WhopSDK::Internal::AnyHash
            )
          end

        # The internal ID of the user.
        sig { returns(String) }
        attr_accessor :id

        # The email of the user
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The name of the user from their Whop account.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The username of the user from their Whop account.
        sig { returns(String) }
        attr_accessor :username

        # The user this membership belongs to
        sig do
          params(
            id: String,
            email: T.nilable(String),
            name: T.nilable(String),
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The internal ID of the user.
          id:,
          # The email of the user
          email:,
          # The name of the user from their Whop account.
          name:,
          # The username of the user from their Whop account.
          username:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              email: T.nilable(String),
              name: T.nilable(String),
              username: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
