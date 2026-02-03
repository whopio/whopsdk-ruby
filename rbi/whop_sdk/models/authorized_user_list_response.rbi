# typed: strong

module WhopSDK
  module Models
    class AuthorizedUserListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::AuthorizedUserListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # A unique ID representing the authorized user object.
      sig { returns(String) }
      attr_accessor :id

      # The company associated with the authorized user.
      sig { returns(WhopSDK::Models::AuthorizedUserListResponse::Company) }
      attr_reader :company

      sig do
        params(
          company: WhopSDK::Models::AuthorizedUserListResponse::Company::OrHash
        ).void
      end
      attr_writer :company

      # The role of the authorized user in the company.
      sig { returns(WhopSDK::AuthorizedUserRoles::TaggedSymbol) }
      attr_accessor :role

      # The user associated with the authorized user.
      sig { returns(WhopSDK::Models::AuthorizedUserListResponse::User) }
      attr_reader :user

      sig do
        params(
          user: WhopSDK::Models::AuthorizedUserListResponse::User::OrHash
        ).void
      end
      attr_writer :user

      # A user who has elevated security privileges for a company
      sig do
        params(
          id: String,
          company: WhopSDK::Models::AuthorizedUserListResponse::Company::OrHash,
          role: WhopSDK::AuthorizedUserRoles::OrSymbol,
          user: WhopSDK::Models::AuthorizedUserListResponse::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID representing the authorized user object.
        id:,
        # The company associated with the authorized user.
        company:,
        # The role of the authorized user in the company.
        role:,
        # The user associated with the authorized user.
        user:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            company: WhopSDK::Models::AuthorizedUserListResponse::Company,
            role: WhopSDK::AuthorizedUserRoles::TaggedSymbol,
            user: WhopSDK::Models::AuthorizedUserListResponse::User
          }
        )
      end
      def to_hash
      end

      class Company < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AuthorizedUserListResponse::Company,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID (tag) of the company.
        sig { returns(String) }
        attr_accessor :id

        # The title of the company.
        sig { returns(String) }
        attr_accessor :title

        # The company associated with the authorized user.
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

      class User < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::AuthorizedUserListResponse::User,
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

        # The user associated with the authorized user.
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
