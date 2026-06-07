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

      sig { returns(T.nilable(String)) }
      attr_accessor :evm_address

      sig { returns(T.nilable(String)) }
      attr_accessor :hosted_url

      sig do
        returns(
          WhopSDK::Models::WalletDepositAddressResponse::Object::TaggedSymbol
        )
      end
      attr_accessor :object

      sig { returns(T.nilable(String)) }
      attr_accessor :solana_address

      sig do
        returns(
          WhopSDK::Models::WalletDepositAddressResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig do
        returns(
          T::Array[
            WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork
          ]
        )
      end
      attr_accessor :supported_networks

      # Echo of the validated asset filter, present when the caller passed ?asset=.
      sig { returns(T.nilable(String)) }
      attr_reader :asset

      sig { params(asset: String).void }
      attr_writer :asset

      # Echo of the validated network filter, present when the caller passed ?network=.
      sig { returns(T.nilable(String)) }
      attr_reader :network

      sig { params(network: String).void }
      attr_writer :network

      sig do
        params(
          evm_address: T.nilable(String),
          hosted_url: T.nilable(String),
          object:
            WhopSDK::Models::WalletDepositAddressResponse::Object::OrSymbol,
          solana_address: T.nilable(String),
          status:
            WhopSDK::Models::WalletDepositAddressResponse::Status::OrSymbol,
          supported_networks:
            T::Array[
              WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::OrHash
            ],
          asset: String,
          network: String
        ).returns(T.attached_class)
      end
      def self.new(
        evm_address:,
        hosted_url:,
        object:,
        solana_address:,
        status:,
        supported_networks:,
        # Echo of the validated asset filter, present when the caller passed ?asset=.
        asset: nil,
        # Echo of the validated network filter, present when the caller passed ?network=.
        network: nil
      )
      end

      sig do
        override.returns(
          {
            evm_address: T.nilable(String),
            hosted_url: T.nilable(String),
            object:
              WhopSDK::Models::WalletDepositAddressResponse::Object::TaggedSymbol,
            solana_address: T.nilable(String),
            status:
              WhopSDK::Models::WalletDepositAddressResponse::Status::TaggedSymbol,
            supported_networks:
              T::Array[
                WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork
              ],
            asset: String,
            network: String
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

      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::WalletDepositAddressResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        READY =
          T.let(
            :ready,
            WhopSDK::Models::WalletDepositAddressResponse::Status::TaggedSymbol
          )
        PROVISIONING =
          T.let(
            :provisioning,
            WhopSDK::Models::WalletDepositAddressResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::WalletDepositAddressResponse::Status::TaggedSymbol
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

        sig do
          returns(
            WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::AddressKind::TaggedSymbol
          )
        end
        attr_accessor :address_kind

        sig { returns(T.nilable(Integer)) }
        attr_accessor :chain_id

        sig { returns(String) }
        attr_accessor :network

        sig { returns(T::Boolean) }
        attr_accessor :onramp_supported

        sig do
          params(
            address_kind:
              WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::AddressKind::OrSymbol,
            chain_id: T.nilable(Integer),
            network: String,
            onramp_supported: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(address_kind:, chain_id:, network:, onramp_supported:)
        end

        sig do
          override.returns(
            {
              address_kind:
                WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::AddressKind::TaggedSymbol,
              chain_id: T.nilable(Integer),
              network: String,
              onramp_supported: T::Boolean
            }
          )
        end
        def to_hash
        end

        module AddressKind
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::AddressKind
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVM =
            T.let(
              :evm,
              WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::AddressKind::TaggedSymbol
            )
          SOLANA =
            T.let(
              :solana,
              WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::AddressKind::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::WalletDepositAddressResponse::SupportedNetwork::AddressKind::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
