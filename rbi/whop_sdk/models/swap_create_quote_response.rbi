# typed: strong

module WhopSDK
  module Models
    class SwapCreateQuoteResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::SwapCreateQuoteResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :amount_in

      sig { returns(String) }
      attr_accessor :amount_out

      sig { returns(Integer) }
      attr_accessor :fee_bps

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :from_token

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :metadata

      sig do
        returns(WhopSDK::Models::SwapCreateQuoteResponse::Object::TaggedSymbol)
      end
      attr_accessor :object

      sig { returns(String) }
      attr_accessor :rate

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :to_token

      sig { returns(T.nilable(String)) }
      attr_reader :amount_out_min

      sig { params(amount_out_min: String).void }
      attr_writer :amount_out_min

      sig { returns(T.nilable(String)) }
      attr_accessor :bridge_fee

      sig { returns(T.nilable(Integer)) }
      attr_accessor :estimated_duration_seconds

      sig { returns(T.nilable(String)) }
      attr_accessor :from_address

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :requires_token_approval

      sig { returns(T.nilable(String)) }
      attr_accessor :to_address

      sig do
        params(
          amount_in: String,
          amount_out: String,
          fee_bps: Integer,
          from_token: T::Hash[Symbol, T.anything],
          metadata: T::Hash[Symbol, T.anything],
          object: WhopSDK::Models::SwapCreateQuoteResponse::Object::OrSymbol,
          rate: String,
          to_token: T::Hash[Symbol, T.anything],
          amount_out_min: String,
          bridge_fee: T.nilable(String),
          estimated_duration_seconds: T.nilable(Integer),
          from_address: T.nilable(String),
          requires_token_approval: T.nilable(T::Boolean),
          to_address: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        amount_in:,
        amount_out:,
        fee_bps:,
        from_token:,
        metadata:,
        object:,
        rate:,
        to_token:,
        amount_out_min: nil,
        bridge_fee: nil,
        estimated_duration_seconds: nil,
        from_address: nil,
        requires_token_approval: nil,
        to_address: nil
      )
      end

      sig do
        override.returns(
          {
            amount_in: String,
            amount_out: String,
            fee_bps: Integer,
            from_token: T::Hash[Symbol, T.anything],
            metadata: T::Hash[Symbol, T.anything],
            object:
              WhopSDK::Models::SwapCreateQuoteResponse::Object::TaggedSymbol,
            rate: String,
            to_token: T::Hash[Symbol, T.anything],
            amount_out_min: String,
            bridge_fee: T.nilable(String),
            estimated_duration_seconds: T.nilable(Integer),
            from_address: T.nilable(String),
            requires_token_approval: T.nilable(T::Boolean),
            to_address: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::SwapCreateQuoteResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SWAP_QUOTE =
          T.let(
            :swap_quote,
            WhopSDK::Models::SwapCreateQuoteResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::SwapCreateQuoteResponse::Object::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
