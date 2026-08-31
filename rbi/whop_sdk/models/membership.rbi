# typed: strong

module WhopSDK
  module Models
    class Membership < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Membership, WhopSDK::Internal::AnyHash) }

      # Membership ID, prefixed `mem_`.
      sig { returns(String) }
      attr_accessor :id

      # The account (seller) this membership belongs to.
      sig { returns(WhopSDK::Membership::Account) }
      attr_reader :account

      sig { params(account: WhopSDK::Membership::Account::OrHash).void }
      attr_writer :account

      # Whether the membership is set to cancel when the current billing period ends.
      # Only meaningful for recurring plans.
      sig { returns(T::Boolean) }
      attr_accessor :cancel_at_period_end

      # When the membership was created, as an ISO 8601 timestamp.
      sig { returns(String) }
      attr_accessor :created_at

      # When the current billing period renews, or when a non-renewing membership
      # expires, as an ISO 8601 timestamp. `null` for one-time purchases with no
      # expiration.
      sig { returns(T.nilable(String)) }
      attr_accessor :current_period_end

      # The software license key for this membership. Only present when the product
      # includes a software licensing experience.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key

      # The caller's member row on the account. Present only when the membership belongs
      # to the caller; `null` on seller-side reads.
      sig { returns(T.nilable(WhopSDK::Membership::Member)) }
      attr_reader :member

      sig do
        params(member: T.nilable(WhopSDK::Membership::Member::OrHash)).void
      end
      attr_writer :member

      # Custom key-value pairs stored on the membership, commonly used for software
      # licensing.
      sig { returns(T.anything) }
      attr_accessor :metadata

      # The buyer's phone number recorded for this membership, or `null`. The number
      # collected (or verified) at checkout when the seller's phone collection is on;
      # falls back to the buyer's account number when they have shared one with this
      # seller.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      # The plan the buyer purchased, prefixed `plan_`.
      sig { returns(String) }
      attr_accessor :plan_id

      # The product this membership grants access to, prefixed `prod_`.
      sig { returns(String) }
      attr_accessor :product_id

      # Billing state of the membership. `active`/`trialing` memberships grant access;
      # `past_due` is the grace period after a failed payment; `completed` one-time
      # purchases keep access; `canceled`/`expired` do not.
      sig { returns(WhopSDK::Membership::Status::TaggedSymbol) }
      attr_accessor :status

      # The buyer, prefixed `user_`. `null` when the buyer is another business or the
      # membership is unclaimed.
      sig { returns(T.nilable(String)) }
      attr_accessor :user_id

      sig do
        params(
          id: String,
          account: WhopSDK::Membership::Account::OrHash,
          cancel_at_period_end: T::Boolean,
          created_at: String,
          current_period_end: T.nilable(String),
          license_key: T.nilable(String),
          member: T.nilable(WhopSDK::Membership::Member::OrHash),
          metadata: T.anything,
          phone_number: T.nilable(String),
          plan_id: String,
          product_id: String,
          status: WhopSDK::Membership::Status::OrSymbol,
          user_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Membership ID, prefixed `mem_`.
        id:,
        # The account (seller) this membership belongs to.
        account:,
        # Whether the membership is set to cancel when the current billing period ends.
        # Only meaningful for recurring plans.
        cancel_at_period_end:,
        # When the membership was created, as an ISO 8601 timestamp.
        created_at:,
        # When the current billing period renews, or when a non-renewing membership
        # expires, as an ISO 8601 timestamp. `null` for one-time purchases with no
        # expiration.
        current_period_end:,
        # The software license key for this membership. Only present when the product
        # includes a software licensing experience.
        license_key:,
        # The caller's member row on the account. Present only when the membership belongs
        # to the caller; `null` on seller-side reads.
        member:,
        # Custom key-value pairs stored on the membership, commonly used for software
        # licensing.
        metadata:,
        # The buyer's phone number recorded for this membership, or `null`. The number
        # collected (or verified) at checkout when the seller's phone collection is on;
        # falls back to the buyer's account number when they have shared one with this
        # seller.
        phone_number:,
        # The plan the buyer purchased, prefixed `plan_`.
        plan_id:,
        # The product this membership grants access to, prefixed `prod_`.
        product_id:,
        # Billing state of the membership. `active`/`trialing` memberships grant access;
        # `past_due` is the grace period after a failed payment; `completed` one-time
        # purchases keep access; `canceled`/`expired` do not.
        status:,
        # The buyer, prefixed `user_`. `null` when the buyer is another business or the
        # membership is unclaimed.
        user_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account: WhopSDK::Membership::Account,
            cancel_at_period_end: T::Boolean,
            created_at: String,
            current_period_end: T.nilable(String),
            license_key: T.nilable(String),
            member: T.nilable(WhopSDK::Membership::Member),
            metadata: T.anything,
            phone_number: T.nilable(String),
            plan_id: String,
            product_id: String,
            status: WhopSDK::Membership::Status::TaggedSymbol,
            user_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Account < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Membership::Account, WhopSDK::Internal::AnyHash)
          end

        # Account ID, prefixed `biz_`.
        sig { returns(String) }
        attr_accessor :id

        # Account logo image URL. `null` when the account has not set one.
        sig { returns(T.nilable(String)) }
        attr_accessor :logo_url

        # Account public route identifier — the `whop.com/{route}` storefront path.
        sig { returns(String) }
        attr_accessor :route

        # Account display name.
        sig { returns(String) }
        attr_accessor :title

        # The account (seller) this membership belongs to.
        sig do
          params(
            id: String,
            logo_url: T.nilable(String),
            route: String,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Account ID, prefixed `biz_`.
          id:,
          # Account logo image URL. `null` when the account has not set one.
          logo_url:,
          # Account public route identifier — the `whop.com/{route}` storefront path.
          route:,
          # Account display name.
          title:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              logo_url: T.nilable(String),
              route: String,
              title: String
            }
          )
        end
        def to_hash
        end
      end

      class Member < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Membership::Member, WhopSDK::Internal::AnyHash)
          end

        # What the member can reach on the account: `customer` for paying members, `admin`
        # for team members, `no_access` once every grant has lapsed.
        sig { returns(WhopSDK::Membership::Member::AccessLevel::TaggedSymbol) }
        attr_accessor :access_level

        # When the member last opened the account's content, as an ISO 8601 timestamp.
        # `null` if they never have.
        sig { returns(T.nilable(String)) }
        attr_accessor :last_accessed_at

        # The member's sort position in the buyer's own account list. `null` until they
        # arrange it.
        sig { returns(T.nilable(Float)) }
        attr_accessor :position

        # The caller's member row on the account. Present only when the membership belongs
        # to the caller; `null` on seller-side reads.
        sig do
          params(
            access_level: WhopSDK::Membership::Member::AccessLevel::OrSymbol,
            last_accessed_at: T.nilable(String),
            position: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # What the member can reach on the account: `customer` for paying members, `admin`
          # for team members, `no_access` once every grant has lapsed.
          access_level:,
          # When the member last opened the account's content, as an ISO 8601 timestamp.
          # `null` if they never have.
          last_accessed_at:,
          # The member's sort position in the buyer's own account list. `null` until they
          # arrange it.
          position:
        )
        end

        sig do
          override.returns(
            {
              access_level:
                WhopSDK::Membership::Member::AccessLevel::TaggedSymbol,
              last_accessed_at: T.nilable(String),
              position: T.nilable(Float)
            }
          )
        end
        def to_hash
        end

        # What the member can reach on the account: `customer` for paying members, `admin`
        # for team members, `no_access` once every grant has lapsed.
        module AccessLevel
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Membership::Member::AccessLevel)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_ACCESS =
            T.let(
              :no_access,
              WhopSDK::Membership::Member::AccessLevel::TaggedSymbol
            )
          ADMIN =
            T.let(
              :admin,
              WhopSDK::Membership::Member::AccessLevel::TaggedSymbol
            )
          CUSTOMER =
            T.let(
              :customer,
              WhopSDK::Membership::Member::AccessLevel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[WhopSDK::Membership::Member::AccessLevel::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # Billing state of the membership. `active`/`trialing` memberships grant access;
      # `past_due` is the grace period after a failed payment; `completed` one-time
      # purchases keep access; `canceled`/`expired` do not.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::Membership::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRIALING = T.let(:trialing, WhopSDK::Membership::Status::TaggedSymbol)
        ACTIVE = T.let(:active, WhopSDK::Membership::Status::TaggedSymbol)
        PAST_DUE = T.let(:past_due, WhopSDK::Membership::Status::TaggedSymbol)
        COMPLETED = T.let(:completed, WhopSDK::Membership::Status::TaggedSymbol)
        CANCELED = T.let(:canceled, WhopSDK::Membership::Status::TaggedSymbol)
        EXPIRED = T.let(:expired, WhopSDK::Membership::Status::TaggedSymbol)
        UNRESOLVED =
          T.let(:unresolved, WhopSDK::Membership::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Membership::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
