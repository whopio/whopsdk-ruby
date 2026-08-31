# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#delete
    class AdGroupDeleteResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   ID of the deleted ad group.
      #
      #   @return [String]
      required :id, String

      # @!attribute deleted
      #   Always true.
      #
      #   @return [Boolean]
      required :deleted, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, deleted:)
      #   @param id [String] ID of the deleted ad group.
      #
      #   @param deleted [Boolean] Always true.
    end
  end
end
