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

      # The business or user account ID whose wallet should execute the swap.
      sig { returns(String) }
      attr_accessor :account_id

      # Input token amount.
      sig { returns(String) }
      attr_accessor :amount

      # Source token contract address.
      sig { returns(String) }
      attr_accessor :from_token

      # Destination token contract address.
      sig { returns(String) }
      attr_accessor :to_token

      sig { returns(T.nilable(WhopSDK::SwapCreateParams::FromChain::Variants)) }
      attr_accessor :from_chain

      sig { returns(T.nilable(Integer)) }
      attr_accessor :slippage_bps

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
        # The business or user account ID whose wallet should execute the swap.
        account_id:,
        # Input token amount.
        amount:,
        # Source token contract address.
        from_token:,
        # Destination token contract address.
        to_token:,
        from_chain: nil,
        slippage_bps: nil,
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
