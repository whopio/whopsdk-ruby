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

      # Input token amount.
      sig { returns(String) }
      attr_accessor :amount

      # Source token contract address.
      sig { returns(String) }
      attr_accessor :from_token

      # Destination token contract address.
      sig { returns(String) }
      attr_accessor :to_token

      # Caller-owned account whose wallet address should be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_id

      sig { returns(T.nilable(String)) }
      attr_accessor :from_address

      sig do
        returns(T.nilable(WhopSDK::SwapCreateQuoteParams::FromChain::Variants))
      end
      attr_accessor :from_chain

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Integer)) }
      attr_accessor :slippage_bps

      sig { returns(T.nilable(String)) }
      attr_accessor :to_address

      sig do
        returns(T.nilable(WhopSDK::SwapCreateQuoteParams::ToChain::Variants))
      end
      attr_accessor :to_chain

      sig do
        params(
          amount: String,
          from_token: String,
          to_token: String,
          account_id: T.nilable(String),
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
        # Input token amount.
        amount:,
        # Source token contract address.
        from_token:,
        # Destination token contract address.
        to_token:,
        # Caller-owned account whose wallet address should be used.
        account_id: nil,
        from_address: nil,
        from_chain: nil,
        metadata: nil,
        slippage_bps: nil,
        to_address: nil,
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
            account_id: T.nilable(String),
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
