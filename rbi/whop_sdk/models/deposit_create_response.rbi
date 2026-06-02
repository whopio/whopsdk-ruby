# typed: strong

module WhopSDK
  module Models
    class DepositCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::DepositCreateResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :amount

      sig { returns(WhopSDK::Models::DepositCreateResponse::DepositAddress) }
      attr_reader :deposit_address

      sig do
        params(
          deposit_address:
            WhopSDK::Models::DepositCreateResponse::DepositAddress::OrHash
        ).void
      end
      attr_writer :deposit_address

      sig { returns(WhopSDK::Models::DepositCreateResponse::Destination) }
      attr_reader :destination

      sig do
        params(
          destination:
            WhopSDK::Models::DepositCreateResponse::Destination::OrHash
        ).void
      end
      attr_writer :destination

      sig { returns(T.nilable(String)) }
      attr_accessor :hosted_url

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :metadata

      sig do
        returns(WhopSDK::Models::DepositCreateResponse::Object::TaggedSymbol)
      end
      attr_accessor :object

      sig do
        params(
          amount: String,
          deposit_address:
            WhopSDK::Models::DepositCreateResponse::DepositAddress::OrHash,
          destination:
            WhopSDK::Models::DepositCreateResponse::Destination::OrHash,
          hosted_url: T.nilable(String),
          metadata: T::Hash[Symbol, T.anything],
          object: WhopSDK::Models::DepositCreateResponse::Object::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        amount:,
        deposit_address:,
        destination:,
        hosted_url:,
        metadata:,
        object:
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            deposit_address:
              WhopSDK::Models::DepositCreateResponse::DepositAddress,
            destination: WhopSDK::Models::DepositCreateResponse::Destination,
            hosted_url: T.nilable(String),
            metadata: T::Hash[Symbol, T.anything],
            object: WhopSDK::Models::DepositCreateResponse::Object::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class DepositAddress < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::DepositCreateResponse::DepositAddress,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :evm

        sig { returns(String) }
        attr_accessor :solana

        sig { params(evm: String, solana: String).returns(T.attached_class) }
        def self.new(evm:, solana:)
        end

        sig { override.returns({ evm: String, solana: String }) }
        def to_hash
        end
      end

      class Destination < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::DepositCreateResponse::Destination,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :address

        sig { returns(String) }
        attr_accessor :currency

        sig { returns(String) }
        attr_accessor :network

        sig { returns(T.nilable(String)) }
        attr_accessor :account_id

        sig do
          params(
            address: String,
            currency: String,
            network: String,
            account_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(address:, currency:, network:, account_id: nil)
        end

        sig do
          override.returns(
            {
              address: String,
              currency: String,
              network: String,
              account_id: T.nilable(String)
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
            T.all(Symbol, WhopSDK::Models::DepositCreateResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSIT =
          T.let(
            :deposit,
            WhopSDK::Models::DepositCreateResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::DepositCreateResponse::Object::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
