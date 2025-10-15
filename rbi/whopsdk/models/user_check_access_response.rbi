# typed: strong

module Whopsdk
  module Models
    class UserCheckAccessResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::UserCheckAccessResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # The permission level of the user
      sig do
        returns(
          Whopsdk::Models::UserCheckAccessResponse::AccessLevel::TaggedSymbol
        )
      end
      attr_accessor :access_level

      # Whether the user has access to the resource
      sig { returns(T::Boolean) }
      attr_accessor :has_access

      # The result of a has access check for the developer API
      sig do
        params(
          access_level:
            Whopsdk::Models::UserCheckAccessResponse::AccessLevel::OrSymbol,
          has_access: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The permission level of the user
        access_level:,
        # Whether the user has access to the resource
        has_access:
      )
      end

      sig do
        override.returns(
          {
            access_level:
              Whopsdk::Models::UserCheckAccessResponse::AccessLevel::TaggedSymbol,
            has_access: T::Boolean
          }
        )
      end
      def to_hash
      end

      # The permission level of the user
      module AccessLevel
        extend Whopsdk::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Whopsdk::Models::UserCheckAccessResponse::AccessLevel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NO_ACCESS =
          T.let(
            :no_access,
            Whopsdk::Models::UserCheckAccessResponse::AccessLevel::TaggedSymbol
          )
        ADMIN =
          T.let(
            :admin,
            Whopsdk::Models::UserCheckAccessResponse::AccessLevel::TaggedSymbol
          )
        CUSTOMER =
          T.let(
            :customer,
            Whopsdk::Models::UserCheckAccessResponse::AccessLevel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Whopsdk::Models::UserCheckAccessResponse::AccessLevel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
