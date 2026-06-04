# typed: strong

module WhopSDK
  module Models
    class WalletCreateWithdrawalResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WalletCreateWithdrawalResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :asset

      sig { returns(String) }
      attr_accessor :created_at

      sig do
        returns(
          WhopSDK::Models::WalletCreateWithdrawalResponse::Object::TaggedSymbol
        )
      end
      attr_accessor :object

      sig { returns(String) }
      attr_accessor :payout_method_id

      sig { returns(String) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :fee_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :fee_type

      sig { returns(T.nilable(String)) }
      attr_accessor :speed

      sig do
        params(
          id: String,
          amount: String,
          asset: String,
          created_at: String,
          object:
            WhopSDK::Models::WalletCreateWithdrawalResponse::Object::OrSymbol,
          payout_method_id: String,
          status: String,
          fee_amount: T.nilable(String),
          fee_type: T.nilable(String),
          speed: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        amount:,
        asset:,
        created_at:,
        object:,
        payout_method_id:,
        status:,
        fee_amount: nil,
        fee_type: nil,
        speed: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: String,
            asset: String,
            created_at: String,
            object:
              WhopSDK::Models::WalletCreateWithdrawalResponse::Object::TaggedSymbol,
            payout_method_id: String,
            status: String,
            fee_amount: T.nilable(String),
            fee_type: T.nilable(String),
            speed: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              WhopSDK::Models::WalletCreateWithdrawalResponse::Object
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WITHDRAWAL =
          T.let(
            :withdrawal,
            WhopSDK::Models::WalletCreateWithdrawalResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::WalletCreateWithdrawalResponse::Object::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
