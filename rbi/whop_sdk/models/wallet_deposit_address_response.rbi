# typed: strong

module WhopSDK
  module Models
    class WalletDepositAddressResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WalletDepositAddressResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :address

      sig do
        returns(
          WhopSDK::Models::WalletDepositAddressResponse::Object::TaggedSymbol
        )
      end
      attr_accessor :object

      sig do
        returns(
          T::Array[
            WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork
          ]
        )
      end
      attr_accessor :supported_networks

      sig do
        params(
          address: String,
          object:
            WhopSDK::Models::WalletDepositAddressResponse::Object::OrSymbol,
          supported_networks:
            T::Array[
              WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(address:, object:, supported_networks:)
      end

      sig do
        override.returns(
          {
            address: String,
            object:
              WhopSDK::Models::WalletDepositAddressResponse::Object::TaggedSymbol,
            supported_networks:
              T::Array[
                WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork
              ]
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::WalletDepositAddressResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEPOSIT_ADDRESS =
          T.let(
            :deposit_address,
            WhopSDK::Models::WalletDepositAddressResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::WalletDepositAddressResponse::Object::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class SupportedNetwork < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :chain_id

        sig { returns(String) }
        attr_accessor :name

        sig do
          params(chain_id: Integer, name: String).returns(T.attached_class)
        end
        def self.new(chain_id:, name:)
        end

        sig { override.returns({ chain_id: Integer, name: String }) }
        def to_hash
        end
      end
    end
  end
end
