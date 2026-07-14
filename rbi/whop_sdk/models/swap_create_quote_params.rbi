# typed: strong

module WhopSDK
  module Models
    class SwapCreateQuoteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::SwapCreateQuoteParams, WhopSDK::Internal::AnyHash)
        end

      # Source token amount.
      sig { returns(String) }
      attr_accessor :amount

      # Source token contract address or ticker symbol, such as "USDT".
      sig { returns(String) }
      attr_accessor :from_token

      # Destination token contract address or ticker symbol, such as "XAUT".
      sig { returns(String) }
      attr_accessor :to_token

      # Source wallet address used for the quote.
      sig { returns(T.nilable(String)) }
      attr_accessor :from_address

      # Source chain name or chain ID. Defaults to the source token's chain when
      # omitted.
      sig do
        returns(T.nilable(WhopSDK::SwapCreateQuoteParams::FromChain::Variants))
      end
      attr_accessor :from_chain

      # Metadata to include with the quote response.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      # Maximum slippage tolerance in basis points.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :slippage_bps

      # Destination wallet address used for the quote.
      sig { returns(T.nilable(String)) }
      attr_accessor :to_address

      # Destination chain name or chain ID. Defaults to the destination token's chain
      # when omitted.
      sig do
        returns(T.nilable(WhopSDK::SwapCreateQuoteParams::ToChain::Variants))
      end
      attr_accessor :to_chain

      sig do
        params(
          amount: String,
          from_token: String,
          to_token: String,
          from_address: T.nilable(String),
          from_chain:
            T.nilable(WhopSDK::SwapCreateQuoteParams::FromChain::Variants),
          metadata: T::Hash[Symbol, T.anything],
          slippage_bps: T.nilable(Integer),
          to_address: T.nilable(String),
          to_chain:
            T.nilable(WhopSDK::SwapCreateQuoteParams::ToChain::Variants),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Source token amount.
        amount:,
        # Source token contract address or ticker symbol, such as "USDT".
        from_token:,
        # Destination token contract address or ticker symbol, such as "XAUT".
        to_token:,
        # Source wallet address used for the quote.
        from_address: nil,
        # Source chain name or chain ID. Defaults to the source token's chain when
        # omitted.
        from_chain: nil,
        # Metadata to include with the quote response.
        metadata: nil,
        # Maximum slippage tolerance in basis points.
        slippage_bps: nil,
        # Destination wallet address used for the quote.
        to_address: nil,
        # Destination chain name or chain ID. Defaults to the destination token's chain
        # when omitted.
        to_chain: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            from_token: String,
            to_token: String,
            from_address: T.nilable(String),
            from_chain:
              T.nilable(WhopSDK::SwapCreateQuoteParams::FromChain::Variants),
            metadata: T::Hash[Symbol, T.anything],
            slippage_bps: T.nilable(Integer),
            to_address: T.nilable(String),
            to_chain:
              T.nilable(WhopSDK::SwapCreateQuoteParams::ToChain::Variants),
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
            T::Array[WhopSDK::SwapCreateQuoteParams::FromChain::Variants]
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
            T::Array[WhopSDK::SwapCreateQuoteParams::ToChain::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
