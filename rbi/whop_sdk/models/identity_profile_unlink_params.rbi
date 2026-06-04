# typed: strong

module WhopSDK
  module Models
    class IdentityProfileUnlinkParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::IdentityProfileUnlinkParams,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The ID of the LedgerAccount to unlink the identity profile from.
      sig { returns(String) }
      attr_accessor :ledger_account_id

      sig do
        params(
          id: String,
          ledger_account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The ID of the LedgerAccount to unlink the identity profile from.
        ledger_account_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            ledger_account_id: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
