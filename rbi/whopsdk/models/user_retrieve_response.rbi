# typed: strong

module Whopsdk
  module Models
    class UserRetrieveResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::UserRetrieveResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # The internal ID of the user.
      sig { returns(String) }
      attr_accessor :id

      # The user's bio
      sig { returns(T.nilable(String)) }
      attr_accessor :bio

      # When the user was created.
      sig { returns(Integer) }
      attr_accessor :created_at

      # The name of the user from their Whop account.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The username of the user from their Whop account.
      sig { returns(String) }
      attr_accessor :username

      # An object representing a (sanitized) user of the site.
      sig do
        params(
          id: String,
          bio: T.nilable(String),
          created_at: Integer,
          name: T.nilable(String),
          username: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The internal ID of the user.
        id:,
        # The user's bio
        bio:,
        # When the user was created.
        created_at:,
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
            bio: T.nilable(String),
            created_at: Integer,
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
