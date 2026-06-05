# typed: strong

module WhopSDK
  module Models
    class WalletSupportedAssetsResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WalletSupportedAssetsResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig do
        returns(T::Array[WhopSDK::Models::WalletSupportedAssetsResponse::Asset])
      end
      attr_accessor :assets

      sig do
        returns(
          WhopSDK::Models::WalletSupportedAssetsResponse::Object::TaggedSymbol
        )
      end
      attr_accessor :object

      sig do
        params(
          assets:
            T::Array[
              WhopSDK::Models::WalletSupportedAssetsResponse::Asset::OrHash
            ],
          object:
            WhopSDK::Models::WalletSupportedAssetsResponse::Object::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(assets:, object:)
      end

      sig do
        override.returns(
          {
            assets:
              T::Array[WhopSDK::Models::WalletSupportedAssetsResponse::Asset],
            object:
              WhopSDK::Models::WalletSupportedAssetsResponse::Object::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Asset < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::WalletSupportedAssetsResponse::Asset,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :chain_id

        sig { returns(Integer) }
        attr_accessor :decimals

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :network

        sig { returns(String) }
        attr_accessor :symbol

        sig { returns(String) }
        attr_accessor :token_address

        sig { returns(T::Boolean) }
        attr_accessor :tradable

        sig do
          params(
            chain_id: Integer,
            decimals: Integer,
            name: String,
            network: String,
            symbol: String,
            token_address: String,
            tradable: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          chain_id:,
          decimals:,
          name:,
          network:,
          symbol:,
          token_address:,
          tradable:
        )
        end

        sig do
          override.returns(
            {
              chain_id: Integer,
              decimals: Integer,
              name: String,
              network: String,
              symbol: String,
              token_address: String,
              tradable: T::Boolean
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
            T.all(
              Symbol,
              WhopSDK::Models::WalletSupportedAssetsResponse::Object
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUPPORTED_ASSETS =
          T.let(
            :supported_assets,
            WhopSDK::Models::WalletSupportedAssetsResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::WalletSupportedAssetsResponse::Object::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
