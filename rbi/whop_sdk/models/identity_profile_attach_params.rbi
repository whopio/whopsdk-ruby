# typed: strong

module WhopSDK
  module Models
    class IdentityProfileAttachParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::IdentityProfileAttachParams,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :identity_profile_id

      # The ID of the LedgerAccount to attach the identity profile to.
      sig { returns(String) }
      attr_accessor :ledger_account_id

      sig do
        params(
          identity_profile_id: String,
          ledger_account_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        identity_profile_id:,
        # The ID of the LedgerAccount to attach the identity profile to.
        ledger_account_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            identity_profile_id: String,
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
