# typed: strong

module WhopSDK
  module Models
    class WalletBalanceResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WalletBalanceResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig do
        returns(WhopSDK::Models::WalletBalanceResponse::Object::TaggedSymbol)
      end
      attr_accessor :object

      sig { returns(T::Array[WhopSDK::Models::WalletBalanceResponse::Token]) }
      attr_accessor :tokens

      sig { returns(String) }
      attr_accessor :total_usd

      sig do
        params(
          object: WhopSDK::Models::WalletBalanceResponse::Object::OrSymbol,
          tokens:
            T::Array[WhopSDK::Models::WalletBalanceResponse::Token::OrHash],
          total_usd: String
        ).returns(T.attached_class)
      end
      def self.new(object:, tokens:, total_usd:)
      end

      sig do
        override.returns(
          {
            object:
              WhopSDK::Models::WalletBalanceResponse::Object::TaggedSymbol,
            tokens: T::Array[WhopSDK::Models::WalletBalanceResponse::Token],
            total_usd: String
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::WalletBalanceResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BALANCE =
          T.let(
            :balance,
            WhopSDK::Models::WalletBalanceResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::WalletBalanceResponse::Object::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Token < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::WalletBalanceResponse::Token,
              WhopSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :balance

        sig { returns(T.nilable(String)) }
        attr_accessor :icon_url

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Float) }
        attr_accessor :price_usd

        sig { returns(String) }
        attr_accessor :symbol

        sig { returns(T.nilable(String)) }
        attr_accessor :token_address

        sig { returns(String) }
        attr_accessor :value_usd

        sig do
          params(
            balance: String,
            icon_url: T.nilable(String),
            name: String,
            price_usd: Float,
            symbol: String,
            token_address: T.nilable(String),
            value_usd: String
          ).returns(T.attached_class)
        end
        def self.new(
          balance:,
          icon_url:,
          name:,
          price_usd:,
          symbol:,
          token_address:,
          value_usd:
        )
        end

        sig do
          override.returns(
            {
              balance: String,
              icon_url: T.nilable(String),
              name: String,
              price_usd: Float,
              symbol: String,
              token_address: T.nilable(String),
              value_usd: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
