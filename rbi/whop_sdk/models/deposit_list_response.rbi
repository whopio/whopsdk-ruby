# typed: strong

module WhopSDK
  module Models
    class DepositListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::DepositListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Account ID that owns these deposit transactions.
      sig { returns(String) }
      attr_accessor :account_id

      # Bank deposit transactions for this account.
      sig { returns(T::Array[WhopSDK::Models::DepositListResponse::Bank]) }
      attr_accessor :bank

      sig do
        returns(WhopSDK::Models::DepositListResponse::Object::TaggedSymbol)
      end
      attr_accessor :object

      sig do
        params(
          account_id: String,
          bank: T::Array[WhopSDK::Models::DepositListResponse::Bank::OrHash],
          object: WhopSDK::Models::DepositListResponse::Object::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Account ID that owns these deposit transactions.
        account_id:,
        # Bank deposit transactions for this account.
        bank:,
        object:
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            bank: T::Array[WhopSDK::Models::DepositListResponse::Bank],
            object: WhopSDK::Models::DepositListResponse::Object::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Bank < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::DepositListResponse::Bank,
              WhopSDK::Internal::AnyHash
            )
          end

        # Bank deposit transaction ID.
        sig { returns(String) }
        attr_accessor :id

        # When the bank deposit transaction was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Amount credited to the account balance.
        sig { returns(T.nilable(String)) }
        attr_accessor :destination_amount

        # Currency credited to the account balance.
        sig { returns(T.nilable(String)) }
        attr_accessor :destination_currency

        # Amount sent by the depositor.
        sig { returns(String) }
        attr_accessor :source_amount

        # Currency sent by the depositor.
        sig { returns(String) }
        attr_accessor :source_currency

        # Current bank deposit status.
        sig { returns(String) }
        attr_accessor :status

        sig do
          params(
            id: String,
            created_at: Time,
            destination_amount: T.nilable(String),
            destination_currency: T.nilable(String),
            source_amount: String,
            source_currency: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Bank deposit transaction ID.
          id:,
          # When the bank deposit transaction was created.
          created_at:,
          # Amount credited to the account balance.
          destination_amount:,
          # Currency credited to the account balance.
          destination_currency:,
          # Amount sent by the depositor.
          source_amount:,
          # Currency sent by the depositor.
          source_currency:,
          # Current bank deposit status.
          status:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              destination_amount: T.nilable(String),
              destination_currency: T.nilable(String),
              source_amount: String,
              source_currency: String,
              status: String
            }
          )
        end
        def to_hash
        end
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::DepositListResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSITS =
          T.let(
            :deposits,
            WhopSDK::Models::DepositListResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::DepositListResponse::Object::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
