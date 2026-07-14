# typed: strong

module WhopSDK
  module Models
    class SwapCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::SwapCreateParams, WhopSDK::Internal::AnyHash)
        end

      # Business or user account ID (biz*\* / user*\*).
      sig { returns(String) }
      attr_accessor :account_id

      # Source token amount.
      sig { returns(String) }
      attr_accessor :amount

      # Source token contract address or ticker symbol, such as "USDT".
      sig { returns(String) }
      attr_accessor :from_token

      # Destination token contract address or ticker symbol, such as "XAUT".
      sig { returns(String) }
      attr_accessor :to_token

      # Source chain name or chain ID. Defaults to the source token's chain when
      # omitted.
      sig { returns(T.nilable(WhopSDK::SwapCreateParams::FromChain::Variants)) }
      attr_accessor :from_chain

      # Maximum slippage tolerance in basis points.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :slippage_bps

      # Destination chain name or chain ID. Defaults to the destination token's chain
      # when omitted.
      sig { returns(T.nilable(WhopSDK::SwapCreateParams::ToChain::Variants)) }
      attr_accessor :to_chain

      sig do
        params(
          account_id: String,
          amount: String,
          from_token: String,
          to_token: String,
          from_chain: T.nilable(WhopSDK::SwapCreateParams::FromChain::Variants),
          slippage_bps: T.nilable(Integer),
          to_chain: T.nilable(WhopSDK::SwapCreateParams::ToChain::Variants),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Business or user account ID (biz*\* / user*\*).
        account_id:,
        # Source token amount.
        amount:,
        # Source token contract address or ticker symbol, such as "USDT".
        from_token:,
        # Destination token contract address or ticker symbol, such as "XAUT".
        to_token:,
        # Source chain name or chain ID. Defaults to the source token's chain when
        # omitted.
        from_chain: nil,
        # Maximum slippage tolerance in basis points.
        slippage_bps: nil,
        # Destination chain name or chain ID. Defaults to the destination token's chain
        # when omitted.
        to_chain: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            amount: String,
            from_token: String,
            to_token: String,
            from_chain:
              T.nilable(WhopSDK::SwapCreateParams::FromChain::Variants),
            slippage_bps: T.nilable(Integer),
            to_chain: T.nilable(WhopSDK::SwapCreateParams::ToChain::Variants),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Source chain name or chain ID. Defaults to the source token's chain when
      # omitted.
      module FromChain
        extend WhopSDK::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Integer) }

        sig do
          override.returns(
            T::Array[WhopSDK::SwapCreateParams::FromChain::Variants]
          )
        end
        def self.variants
        end
      end

      # Destination chain name or chain ID. Defaults to the destination token's chain
      # when omitted.
      module ToChain
        extend WhopSDK::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Integer) }

        sig do
          override.returns(
            T::Array[WhopSDK::SwapCreateParams::ToChain::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
