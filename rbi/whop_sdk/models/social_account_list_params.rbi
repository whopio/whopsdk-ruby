# typed: strong

module WhopSDK
  module Models
    class SocialAccountListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::SocialAccountListParams, WhopSDK::Internal::AnyHash)
        end

      # The Account that the social accounts are connected to. Provide either this or
      # user_id.
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Cursor to fetch the page after (from page_info.end_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Cursor to fetch the page before (from page_info.start_cursor).
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Sort direction.
      sig do
        returns(
          T.nilable(WhopSDK::SocialAccountListParams::Direction::OrSymbol)
        )
      end
      attr_reader :direction

      sig do
        params(
          direction: WhopSDK::SocialAccountListParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # The number of social accounts to return.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # The number of social accounts to return from the end of the range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # The field to sort social accounts by.
      sig do
        returns(T.nilable(WhopSDK::SocialAccountListParams::Order::OrSymbol))
      end
      attr_reader :order

      sig do
        params(order: WhopSDK::SocialAccountListParams::Order::OrSymbol).void
      end
      attr_writer :order

      # Only return social accounts for the platform that is specified.
      sig do
        returns(T.nilable(WhopSDK::SocialAccountListParams::Platform::OrSymbol))
      end
      attr_reader :platform

      sig do
        params(
          platform: WhopSDK::SocialAccountListParams::Platform::OrSymbol
        ).void
      end
      attr_writer :platform

      # Only return social accounts that have these scopes.
      sig do
        returns(
          T.nilable(T::Array[WhopSDK::SocialAccountListParams::Scope::OrSymbol])
        )
      end
      attr_reader :scopes

      sig do
        params(
          scopes: T::Array[WhopSDK::SocialAccountListParams::Scope::OrSymbol]
        ).void
      end
      attr_writer :scopes

      # The User that the social accounts are connected to. Provide either this or
      # account_id.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      # Only return social accounts that are verified on the platform.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :verified

      sig { params(verified: T::Boolean).void }
      attr_writer :verified

      sig do
        params(
          account_id: String,
          after: String,
          before: String,
          direction: WhopSDK::SocialAccountListParams::Direction::OrSymbol,
          first: Integer,
          last: Integer,
          order: WhopSDK::SocialAccountListParams::Order::OrSymbol,
          platform: WhopSDK::SocialAccountListParams::Platform::OrSymbol,
          scopes: T::Array[WhopSDK::SocialAccountListParams::Scope::OrSymbol],
          user_id: String,
          verified: T::Boolean,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The Account that the social accounts are connected to. Provide either this or
        # user_id.
        account_id: nil,
        # Cursor to fetch the page after (from page_info.end_cursor).
        after: nil,
        # Cursor to fetch the page before (from page_info.start_cursor).
        before: nil,
        # Sort direction.
        direction: nil,
        # The number of social accounts to return.
        first: nil,
        # The number of social accounts to return from the end of the range.
        last: nil,
        # The field to sort social accounts by.
        order: nil,
        # Only return social accounts for the platform that is specified.
        platform: nil,
        # Only return social accounts that have these scopes.
        scopes: nil,
        # The User that the social accounts are connected to. Provide either this or
        # account_id.
        user_id: nil,
        # Only return social accounts that are verified on the platform.
        verified: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            after: String,
            before: String,
            direction: WhopSDK::SocialAccountListParams::Direction::OrSymbol,
            first: Integer,
            last: Integer,
            order: WhopSDK::SocialAccountListParams::Order::OrSymbol,
            platform: WhopSDK::SocialAccountListParams::Platform::OrSymbol,
            scopes: T::Array[WhopSDK::SocialAccountListParams::Scope::OrSymbol],
            user_id: String,
            verified: T::Boolean,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort direction.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::SocialAccountListParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(:asc, WhopSDK::SocialAccountListParams::Direction::TaggedSymbol)
        DESC =
          T.let(
            :desc,
            WhopSDK::SocialAccountListParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::SocialAccountListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The field to sort social accounts by.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::SocialAccountListParams::Order)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISPLAY_ORDER =
          T.let(
            :display_order,
            WhopSDK::SocialAccountListParams::Order::TaggedSymbol
          )
        CREATED_AT =
          T.let(
            :created_at,
            WhopSDK::SocialAccountListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::SocialAccountListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Only return social accounts for the platform that is specified.
      module Platform
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::SocialAccountListParams::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        X = T.let(:x, WhopSDK::SocialAccountListParams::Platform::TaggedSymbol)
        INSTAGRAM =
          T.let(
            :instagram,
            WhopSDK::SocialAccountListParams::Platform::TaggedSymbol
          )
        YOUTUBE =
          T.let(
            :youtube,
            WhopSDK::SocialAccountListParams::Platform::TaggedSymbol
          )
        TIKTOK =
          T.let(
            :tiktok,
            WhopSDK::SocialAccountListParams::Platform::TaggedSymbol
          )
        FACEBOOK =
          T.let(
            :facebook,
            WhopSDK::SocialAccountListParams::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::SocialAccountListParams::Platform::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Scope
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::SocialAccountListParams::Scope)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADVERTISE =
          T.let(
            :advertise,
            WhopSDK::SocialAccountListParams::Scope::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::SocialAccountListParams::Scope::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
