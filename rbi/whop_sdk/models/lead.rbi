# typed: strong

module WhopSDK
  module Models
    class Lead < WhopSDK::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(WhopSDK::Lead, WhopSDK::Internal::AnyHash) }

      # The unique identifier for the lead.
      sig { returns(String) }
      attr_accessor :id

      # The datetime the lead was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # The company member record if this lead has converted into a paying customer.
      # Null if the lead has not converted.
      sig { returns(T.nilable(WhopSDK::Lead::Member)) }
      attr_reader :member

      sig { params(member: T.nilable(WhopSDK::Lead::Member::OrHash)).void }
      attr_writer :member

      # Custom key-value pairs attached to this lead. Null if no metadata was provided.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      # The product the lead expressed interest in. Null if the lead is not associated
      # with a specific product.
      sig { returns(T.nilable(WhopSDK::Lead::Product)) }
      attr_reader :product

      sig { params(product: T.nilable(WhopSDK::Lead::Product::OrHash)).void }
      attr_writer :product

      # The URL of the page that referred this lead to the company. Null if no referrer
      # was captured.
      sig { returns(T.nilable(String)) }
      attr_accessor :referrer

      # The datetime the lead was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # The user account associated with this lead.
      sig { returns(WhopSDK::Lead::User) }
      attr_reader :user

      sig { params(user: WhopSDK::Lead::User::OrHash).void }
      attr_writer :user

      # A prospective customer who has expressed interest in a company or product but
      # has not yet purchased.
      sig do
        params(
          id: String,
          created_at: Time,
          member: T.nilable(WhopSDK::Lead::Member::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.anything]),
          product: T.nilable(WhopSDK::Lead::Product::OrHash),
          referrer: T.nilable(String),
          updated_at: Time,
          user: WhopSDK::Lead::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The unique identifier for the lead.
        id:,
        # The datetime the lead was created.
        created_at:,
        # The company member record if this lead has converted into a paying customer.
        # Null if the lead has not converted.
        member:,
        # Custom key-value pairs attached to this lead. Null if no metadata was provided.
        metadata:,
        # The product the lead expressed interest in. Null if the lead is not associated
        # with a specific product.
        product:,
        # The URL of the page that referred this lead to the company. Null if no referrer
        # was captured.
        referrer:,
        # The datetime the lead was last updated.
        updated_at:,
        # The user account associated with this lead.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            member: T.nilable(WhopSDK::Lead::Member),
            metadata: T.nilable(T::Hash[Symbol, T.anything]),
            product: T.nilable(WhopSDK::Lead::Product),
            referrer: T.nilable(String),
            updated_at: Time,
            user: WhopSDK::Lead::User
          }
        )
      end
      def to_hash
      end

      class Member < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(WhopSDK::Lead::Member, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the company member.
        sig { returns(String) }
        attr_accessor :id

        # The company member record if this lead has converted into a paying customer.
        # Null if the lead has not converted.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier for the company member.
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
            T.any(WhopSDK::Lead::Product, WhopSDK::Internal::AnyHash)
          end

        # The unique identifier for the product.
        sig { returns(String) }
        attr_accessor :id

        # The display name of the product shown to customers on the product page and in
        # search results.
        sig { returns(String) }
        attr_accessor :title

        # The product the lead expressed interest in. Null if the lead is not associated
        # with a specific product.
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
            T.any(WhopSDK::Lead::User, WhopSDK::Internal::AnyHash)
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

        # The user account associated with this lead.
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
