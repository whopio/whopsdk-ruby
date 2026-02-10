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

      # The unique identifier for the membership.
      sig { returns(String) }
      attr_accessor :id

      # Whether this membership is set to cancel at the end of the current billing
      # cycle. Only applies to memberships with a recurring plan.
      sig { returns(T::Boolean) }
      attr_accessor :cancel_at_period_end

      # The different reasons a user can choose for why they are canceling their
      # membership.
      sig { returns(T.nilable(WhopSDK::CancelOptions::TaggedSymbol)) }
      attr_accessor :cancel_option

      # The time the customer initiated cancellation of this membership. As a Unix
      # timestamp. Null if the membership has not been canceled.
      sig { returns(T.nilable(Time)) }
      attr_accessor :canceled_at

      # Free-text explanation provided by the customer when canceling. Null if the
      # customer did not provide a reason.
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_reason

      # The company this membership belongs to.
      sig { returns(WhopSDK::Models::MembershipListResponse::Company) }
      attr_reader :company

      sig do
        params(
          company: WhopSDK::Models::MembershipListResponse::Company::OrHash
        ).void
      end
      attr_writer :company

      # The datetime the membership was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The available currencies on the platform
      sig { returns(T.nilable(WhopSDK::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # The time the user first joined the company associated with this membership. As a
      # Unix timestamp. Null if the member record does not exist.
      sig { returns(T.nilable(Time)) }
      attr_accessor :joined_at

      # The software license key associated with this membership. Only present if the
      # product includes a Whop Software Licensing experience. Null otherwise.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key

      # The URL where the customer can view and manage this membership, including
      # cancellation and plan changes. Null if no member record exists.
      sig { returns(T.nilable(String)) }
      attr_accessor :manage_url

      # The member record linking the user to the company for this membership. Null if
      # the member record has not been created yet.
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

      # Custom key-value pairs for the membership (commonly used for software licensing,
      # e.g., HWID). Max 50 keys, 500 chars per key, 5000 chars per value.
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :metadata

      # Whether recurring payment collection for this membership is temporarily paused
      # by the company.
      sig { returns(T::Boolean) }
      attr_accessor :payment_collection_paused

      # The plan the customer purchased to create this membership.
      sig { returns(WhopSDK::Models::MembershipListResponse::Plan) }
      attr_reader :plan

      sig do
        params(plan: WhopSDK::Models::MembershipListResponse::Plan::OrHash).void
      end
      attr_writer :plan

      # The product this membership grants access to.
      sig { returns(WhopSDK::Models::MembershipListResponse::Product) }
      attr_reader :product

      sig do
        params(
          product: WhopSDK::Models::MembershipListResponse::Product::OrHash
        ).void
      end
      attr_writer :product

      # The promotional code currently applied to this membership's billing. Null if no
      # promo code is active.
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

      # The end of the current billing period for this recurring membership. As a Unix
      # timestamp. Null if the membership is not recurring.
      sig { returns(T.nilable(Time)) }
      attr_accessor :renewal_period_end

      # The start of the current billing period for this recurring membership. As a Unix
      # timestamp. Null if the membership is not recurring.
      sig { returns(T.nilable(Time)) }
      attr_accessor :renewal_period_start

      # The current lifecycle status of the membership (e.g., active, trialing,
      # past_due, canceled, expired, completed).
      sig { returns(WhopSDK::MembershipStatus::TaggedSymbol) }
      attr_accessor :status

      # The datetime the membership was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user who owns this membership. Null if the user account has been deleted.
      sig { returns(T.nilable(WhopSDK::Models::MembershipListResponse::User)) }
      attr_reader :user

      sig do
        params(
          user: T.nilable(WhopSDK::Models::MembershipListResponse::User::OrHash)
        ).void
      end
      attr_writer :user

      # A membership represents an active relationship between a user and a product. It
      # tracks the user's access, billing status, and renewal schedule.
      sig do
        params(
          id: String,
          cancel_at_period_end: T::Boolean,
          cancel_option: T.nilable(WhopSDK::CancelOptions::OrSymbol),
          canceled_at: T.nilable(Time),
          cancellation_reason: T.nilable(String),
          company: WhopSDK::Models::MembershipListResponse::Company::OrHash,
          created_at: Time,
          currency: T.nilable(WhopSDK::Currency::OrSymbol),
          joined_at: T.nilable(Time),
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
        # The unique identifier for the membership.
        id:,
        # Whether this membership is set to cancel at the end of the current billing
        # cycle. Only applies to memberships with a recurring plan.
        cancel_at_period_end:,
        # The different reasons a user can choose for why they are canceling their
        # membership.
        cancel_option:,
        # The time the customer initiated cancellation of this membership. As a Unix
        # timestamp. Null if the membership has not been canceled.
        canceled_at:,
        # Free-text explanation provided by the customer when canceling. Null if the
        # customer did not provide a reason.
        cancellation_reason:,
        # The company this membership belongs to.
        company:,
        # The datetime the membership was created.
        created_at:,
        # The available currencies on the platform
        currency:,
        # The time the user first joined the company associated with this membership. As a
        # Unix timestamp. Null if the member record does not exist.
        joined_at:,
        # The software license key associated with this membership. Only present if the
        # product includes a Whop Software Licensing experience. Null otherwise.
        license_key:,
        # The URL where the customer can view and manage this membership, including
        # cancellation and plan changes. Null if no member record exists.
        manage_url:,
        # The member record linking the user to the company for this membership. Null if
        # the member record has not been created yet.
        member:,
        # Custom key-value pairs for the membership (commonly used for software licensing,
        # e.g., HWID). Max 50 keys, 500 chars per key, 5000 chars per value.
        metadata:,
        # Whether recurring payment collection for this membership is temporarily paused
        # by the company.
        payment_collection_paused:,
        # The plan the customer purchased to create this membership.
        plan:,
        # The product this membership grants access to.
        product:,
        # The promotional code currently applied to this membership's billing. Null if no
        # promo code is active.
        promo_code:,
        # The end of the current billing period for this recurring membership. As a Unix
        # timestamp. Null if the membership is not recurring.
        renewal_period_end:,
        # The start of the current billing period for this recurring membership. As a Unix
        # timestamp. Null if the membership is not recurring.
        renewal_period_start:,
        # The current lifecycle status of the membership (e.g., active, trialing,
        # past_due, canceled, expired, completed).
        status:,
        # The datetime the membership was last updated.
        updated_at:,
        # The user who owns this membership. Null if the user account has been deleted.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cancel_at_period_end: T::Boolean,
            cancel_option: T.nilable(WhopSDK::CancelOptions::TaggedSymbol),
            canceled_at: T.nilable(Time),
            cancellation_reason: T.nilable(String),
            company: WhopSDK::Models::MembershipListResponse::Company,
            created_at: Time,
            currency: T.nilable(WhopSDK::Currency::TaggedSymbol),
            joined_at: T.nilable(Time),
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

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MembershipListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the company.
        sig { returns(String) }
        attr_accessor :id

        # The display name of the company shown to customers.
        sig { returns(String) }
        attr_accessor :title

        # The company this membership belongs to.
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

      class Member < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MembershipListResponse::Member,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the member.
        sig { returns(String) }
        attr_accessor :id

        # The member record linking the user to the company for this membership. Null if
        # the member record has not been created yet.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the member.
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

        # The unique identifier for the plan.
        sig { returns(String) }
        attr_accessor :id

        # The plan the customer purchased to create this membership.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the plan.
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

        # The unique identifier for the product.
        sig { returns(String) }
        attr_accessor :id

        # The display name of the product shown to customers on the product page and in
        # search results.
        sig { returns(String) }
        attr_accessor :title

        # The product this membership grants access to.
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

      class PromoCode < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::MembershipListResponse::PromoCode,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the promo code.
        sig { returns(String) }
        attr_accessor :id

        # The promotional code currently applied to this membership's billing. Null if no
        # promo code is active.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the promo code.
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

        # The unique identifier for the user.
        sig { returns(String) }
        attr_accessor :id

        # The user's email address. Requires the member:email:read permission to access.
        # Null if not authorized.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The user's display name shown on their public profile.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The user's unique username shown on their public profile.
        sig { returns(String) }
        attr_accessor :username

        # The user who owns this membership. Null if the user account has been deleted.
        sig do
          params(
            id: String,
            email: T.nilable(String),
            name: T.nilable(String),
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the user.
          id:,
          # The user's email address. Requires the member:email:read permission to access.
          # Null if not authorized.
          email:,
          # The user's display name shown on their public profile.
          name:,
          # The user's unique username shown on their public profile.
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
