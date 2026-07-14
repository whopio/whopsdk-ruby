# typed: strong

module WhopSDK
  module Models
    class SwapCreateResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::SwapCreateResponse, WhopSDK::Internal::AnyHash)
        end

      # Swap ID. Poll `GET /swaps/:id` for status.
      sig { returns(String) }
      attr_accessor :id

      # Account ID that owns the wallet used for the swap.
      sig { returns(String) }
      attr_accessor :account_id

      sig { returns(WhopSDK::Models::SwapCreateResponse::Object::TaggedSymbol) }
      attr_accessor :object

      # Initial swap status.
      sig { returns(String) }
      attr_accessor :status

      # Expected destination token amount.
      sig { returns(T.nilable(String)) }
      attr_reader :amount_out_expected

      sig { params(amount_out_expected: String).void }
      attr_writer :amount_out_expected

      # Minimum destination amount after slippage.
      sig { returns(T.nilable(String)) }
      attr_reader :amount_out_min

      sig { params(amount_out_min: String).void }
      attr_writer :amount_out_min

      # Quoted exchange rate used to create the swap.
      sig { returns(T.nilable(String)) }
      attr_reader :rate

      sig { params(rate: String).void }
      attr_writer :rate

      # Destination chain for the swap.
      sig { returns(T.nilable(String)) }
      attr_reader :to_chain

      sig { params(to_chain: String).void }
      attr_writer :to_chain

      sig do
        params(
          id: String,
          account_id: String,
          object: WhopSDK::Models::SwapCreateResponse::Object::OrSymbol,
          status: String,
          amount_out_expected: String,
          amount_out_min: String,
          rate: String,
          to_chain: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Swap ID. Poll `GET /swaps/:id` for status.
        id:,
        # Account ID that owns the wallet used for the swap.
        account_id:,
        object:,
        # Initial swap status.
        status:,
        # Expected destination token amount.
        amount_out_expected: nil,
        # Minimum destination amount after slippage.
        amount_out_min: nil,
        # Quoted exchange rate used to create the swap.
        rate: nil,
        # Destination chain for the swap.
        to_chain: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            object: WhopSDK::Models::SwapCreateResponse::Object::TaggedSymbol,
            status: String,
            amount_out_expected: String,
            amount_out_min: String,
            rate: String,
            to_chain: String
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::SwapCreateResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SWAP =
          T.let(
            :swap,
            WhopSDK::Models::SwapCreateResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::Models::SwapCreateResponse::Object::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
