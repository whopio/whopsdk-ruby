# typed: strong

module WhopSDK
  module Models
    class SwapRetrieveResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::SwapRetrieveResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # Swap ID.
      sig { returns(String) }
      attr_accessor :id

      # Account ID that owns the wallet used for the swap.
      sig { returns(String) }
      attr_accessor :account_id

      sig do
        returns(WhopSDK::Models::SwapRetrieveResponse::Object::TaggedSymbol)
      end
      attr_accessor :object

      # Current swap status.
      sig { returns(String) }
      attr_accessor :status

      # On-chain transaction hashes produced by the swap.
      sig { returns(T::Array[String]) }
      attr_accessor :tx_hashes

      # Latest error returned for a failed swap.
      sig { returns(T.nilable(String)) }
      attr_accessor :error

      sig do
        params(
          id: String,
          account_id: String,
          object: WhopSDK::Models::SwapRetrieveResponse::Object::OrSymbol,
          status: String,
          tx_hashes: T::Array[String],
          error: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Swap ID.
        id:,
        # Account ID that owns the wallet used for the swap.
        account_id:,
        object:,
        # Current swap status.
        status:,
        # On-chain transaction hashes produced by the swap.
        tx_hashes:,
        # Latest error returned for a failed swap.
        error: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            account_id: String,
            object: WhopSDK::Models::SwapRetrieveResponse::Object::TaggedSymbol,
            status: String,
            tx_hashes: T::Array[String],
            error: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Object
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::SwapRetrieveResponse::Object)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SWAP =
          T.let(
            :swap,
            WhopSDK::Models::SwapRetrieveResponse::Object::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              WhopSDK::Models::SwapRetrieveResponse::Object::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
