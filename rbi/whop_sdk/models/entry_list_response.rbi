# typed: strong

module WhopSDK
  module Models
    class EntryListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::EntryListResponse, WhopSDK::Internal::AnyHash)
        end

      # The internal ID of the entry.
      sig { returns(String) }
      attr_accessor :id

      # When the entry was created.
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at

      # The waitlist plan the entry if for.
      sig { returns(T.nilable(WhopSDK::Models::EntryListResponse::Plan)) }
      attr_reader :plan

      sig do
        params(
          plan: T.nilable(WhopSDK::Models::EntryListResponse::Plan::OrHash)
        ).void
      end
      attr_writer :plan

      # The product tied to this entry, if there is one.
      sig { returns(T.nilable(WhopSDK::Models::EntryListResponse::Product)) }
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(WhopSDK::Models::EntryListResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # The status of the entry.
      sig { returns(WhopSDK::EntryStatus::TaggedSymbol) }
      attr_accessor :status

      # The user who created the entry.
      sig { returns(WhopSDK::Models::EntryListResponse::User) }
      attr_reader :user

      sig do
        params(user: WhopSDK::Models::EntryListResponse::User::OrHash).void
      end
      attr_writer :user

      # An object representing an entry in a waitlist.
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
        # The internal ID of the entry.
        id:,
        # When the entry was created.
        created_at:,
        # The waitlist plan the entry if for.
        plan:,
        # The product tied to this entry, if there is one.
        product:,
        # The status of the entry.
        status:,
        # The user who created the entry.
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

        # The internal ID of the plan.
        sig { returns(String) }
        attr_accessor :id

        # The waitlist plan the entry if for.
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
              WhopSDK::Models::EntryListResponse::Product,
              WhopSDK::Internal::AnyHash
            )
          end

        # The internal ID of the public product.
        sig { returns(String) }
        attr_accessor :id

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The product tied to this entry, if there is one.
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

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::EntryListResponse::User,
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

        # The user who created the entry.
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
