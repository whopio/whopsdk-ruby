# typed: strong

module WhopSDK
  module Models
    class VerificationListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::VerificationListParams, WhopSDK::Internal::AnyHash)
        end

      # Account or user ID whose verifications you want to list. Use a `biz_` account
      # ID, or the caller's `user_` ID for personal verifications.
      sig { returns(String) }
      attr_accessor :account_id

      # Sort direction for returned verifications.
      sig do
        returns(T.nilable(WhopSDK::VerificationListParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(
          direction: WhopSDK::VerificationListParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # Field used to sort returned verifications.
      sig do
        returns(T.nilable(WhopSDK::VerificationListParams::Order::OrSymbol))
      end
      attr_reader :order

      sig do
        params(order: WhopSDK::VerificationListParams::Order::OrSymbol).void
      end
      attr_writer :order

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig do
        params(
          account_id: String,
          direction: WhopSDK::VerificationListParams::Direction::OrSymbol,
          order: WhopSDK::VerificationListParams::Order::OrSymbol,
          api_version_date: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Account or user ID whose verifications you want to list. Use a `biz_` account
        # ID, or the caller's `user_` ID for personal verifications.
        account_id:,
        # Sort direction for returned verifications.
        direction: nil,
        # Field used to sort returned verifications.
        order: nil,
        api_version_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            direction: WhopSDK::VerificationListParams::Direction::OrSymbol,
            order: WhopSDK::VerificationListParams::Order::OrSymbol,
            api_version_date: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort direction for returned verifications.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::VerificationListParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(:asc, WhopSDK::VerificationListParams::Direction::TaggedSymbol)
        DESC =
          T.let(:desc, WhopSDK::VerificationListParams::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::VerificationListParams::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Field used to sort returned verifications.
      module Order
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::VerificationListParams::Order) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UPDATED_AT =
          T.let(
            :updated_at,
            WhopSDK::VerificationListParams::Order::TaggedSymbol
          )
        CREATED_AT =
          T.let(
            :created_at,
            WhopSDK::VerificationListParams::Order::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::VerificationListParams::Order::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
