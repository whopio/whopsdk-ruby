# typed: strong

module WhopSDK
  module Models
    class WalletPingResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::WalletPingResponse, WhopSDK::Internal::AnyHash)
        end

      sig { returns(WhopSDK::Models::WalletPingResponse::Status::TaggedSymbol) }
      attr_accessor :status

      sig do
        params(
          status: WhopSDK::Models::WalletPingResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(status:)
      end

      sig do
        override.returns(
          { status: WhopSDK::Models::WalletPingResponse::Status::TaggedSymbol }
        )
      end
      def to_hash
      end

      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::Models::WalletPingResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OK =
          T.let(:ok, WhopSDK::Models::WalletPingResponse::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::Models::WalletPingResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
