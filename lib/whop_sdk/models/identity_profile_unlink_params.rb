# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::IdentityProfiles#unlink
    class IdentityProfileUnlinkParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute ledger_account_id
      #   The ID of the LedgerAccount to unlink the identity profile from.
      #
      #   @return [String]
      required :ledger_account_id, String

      # @!method initialize(id:, ledger_account_id:, request_options: {})
      #   @param id [String]
      #
      #   @param ledger_account_id [String] The ID of the LedgerAccount to unlink the identity profile from.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
