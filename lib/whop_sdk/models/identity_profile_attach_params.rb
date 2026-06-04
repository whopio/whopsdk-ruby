# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::IdentityProfiles#attach
    class IdentityProfileAttachParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute identity_profile_id
      #
      #   @return [String]
      required :identity_profile_id, String

      # @!attribute ledger_account_id
      #   The ID of the LedgerAccount to attach the identity profile to.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!method initialize(identity_profile_id:, ledger_account_id:, request_options: {})
      #   @param identity_profile_id [String]
      #
      #   @param ledger_account_id [String] The ID of the LedgerAccount to attach the identity profile to.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
