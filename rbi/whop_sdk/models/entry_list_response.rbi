# typed: strong

module WhopSDK
  module Models
    class EntryListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::EntryListResponse, WhopSDK::Internal::AnyHash)
        end

      # The unique identifier for the entry.
      sig { returns(String) }
      attr_accessor :id

      # The datetime the entry was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # The waitlisted plan that this entry is a signup for.
      sig { returns(T.nilable(WhopSDK::Models::EntryListResponse::Plan)) }
      attr_reader :plan

      sig do
        params(
          plan: T.nilable(WhopSDK::Models::EntryListResponse::Plan::OrHash)
        ).void
      end
      attr_writer :plan

      # The product associated with this entry's waitlisted plan. Null if the plan is
      # not tied to a product.
      sig { returns(T.nilable(WhopSDK::Models::EntryListResponse::Product)) }
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(WhopSDK::Models::EntryListResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # The current status of the waitlist entry (e.g., drafted, pending, approved,
      # denied).
      sig { returns(WhopSDK::EntryStatus::TaggedSymbol) }
      attr_accessor :status

      # The user who submitted this waitlist entry.
      sig { returns(WhopSDK::Models::EntryListResponse::User) }
      attr_reader :user

      sig do
        params(user: WhopSDK::Models::EntryListResponse::User::OrHash).void
      end
      attr_writer :user

      # An entry represents a user's signup for a waitlisted plan.
      sig do
        params(
          id: String,
          created_at: T.nilable(Time),
          plan: T.nilable(WhopSDK::Models::EntryListResponse::Plan::OrHash),
          product:
            T.nilable(WhopSDK::Models::EntryListResponse::Product::OrHash),
          status: WhopSDK::EntryStatus::OrSymbol,
          user: WhopSDK::Models::EntryListResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the entry.
        id:,
        # The datetime the entry was created.
        created_at:,
        # The waitlisted plan that this entry is a signup for.
        plan:,
        # The product associated with this entry's waitlisted plan. Null if the plan is
        # not tied to a product.
        product:,
        # The current status of the waitlist entry (e.g., drafted, pending, approved,
        # denied).
        status:,
        # The user who submitted this waitlist entry.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: T.nilable(Time),
            plan: T.nilable(WhopSDK::Models::EntryListResponse::Plan),
            product: T.nilable(WhopSDK::Models::EntryListResponse::Product),
            status: WhopSDK::EntryStatus::TaggedSymbol,
            user: WhopSDK::Models::EntryListResponse::User
          }
        )
      end
      def to_hash
      end

      class Plan < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::EntryListResponse::Plan,
              WhopSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the plan.
        sig { returns(String) }
        attr_accessor :id

        # The waitlisted plan that this entry is a signup for.
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
              WhopSDK::Models::EntryListResponse::Product,
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

        # The product associated with this entry's waitlisted plan. Null if the plan is
        # not tied to a product.
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

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::EntryListResponse::User,
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

        # The user who submitted this waitlist entry.
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
