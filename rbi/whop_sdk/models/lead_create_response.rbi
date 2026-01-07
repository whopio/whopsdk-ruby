# typed: strong

module WhopSDK
  module Models
    class LeadCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::LeadCreateResponse, WhopSDK::Internal::AnyHash)
        end

      # The ID of the lead.
      sig { returns(String) }
      attr_accessor :id

      # The timestamp of when the lead was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The converted member, if any.
      sig { returns(T.nilable(WhopSDK::Models::LeadCreateResponse::Member)) }
      attr_reader :member

      sig do
        params(
          member: T.nilable(WhopSDK::Models::LeadCreateResponse::Member::OrHash)
        ).void
      end
      attr_writer :member

      # Custom metadata for the lead.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The access pass the lead is interested in, if available.
      sig { returns(T.nilable(WhopSDK::Models::LeadCreateResponse::Product)) }
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(WhopSDK::Models::LeadCreateResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      # The referrer URL that brought this lead.
      sig { returns(T.nilable(String)) }
      attr_accessor :referrer

      # The timestamp of when the lead was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user who is the lead.
      sig { returns(WhopSDK::Models::LeadCreateResponse::User) }
      attr_reader :user

      sig do
        params(user: WhopSDK::Models::LeadCreateResponse::User::OrHash).void
      end
      attr_writer :user

      # An object representing a lead (someone who is interested in a whop).
      sig do
        params(
          id: String,
          created_at: Time,
          member:
            T.nilable(WhopSDK::Models::LeadCreateResponse::Member::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          product:
            T.nilable(WhopSDK::Models::LeadCreateResponse::Product::OrHash),
          referrer: T.nilable(String),
          updated_at: Time,
          user: WhopSDK::Models::LeadCreateResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the lead.
        id:,
        # The timestamp of when the lead was created.
        created_at:,
        # The converted member, if any.
        member:,
        # Custom metadata for the lead.
        metadata:,
        # The access pass the lead is interested in, if available.
        product:,
        # The referrer URL that brought this lead.
        referrer:,
        # The timestamp of when the lead was last updated.
        updated_at:,
        # The user who is the lead.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            member: T.nilable(WhopSDK::Models::LeadCreateResponse::Member),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            product: T.nilable(WhopSDK::Models::LeadCreateResponse::Product),
            referrer: T.nilable(String),
            updated_at: Time,
            user: WhopSDK::Models::LeadCreateResponse::User
          }
        )
      end
      def to_hash
      end

      class Member < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::LeadCreateResponse::Member,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the member
        sig { returns(String) }
        attr_accessor :id

        # The converted member, if any.
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

      class Product < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::LeadCreateResponse::Product,
              WhopSDK::Internal::AnyHash
            )
          end

        # The internal ID of the public product.
        sig { returns(String) }
        attr_accessor :id

        # The title of the product. Use for Whop 4.0.
        sig { returns(String) }
        attr_accessor :title

        # The access pass the lead is interested in, if available.
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
              WhopSDK::Models::LeadCreateResponse::User,
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

        # The user who is the lead.
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
