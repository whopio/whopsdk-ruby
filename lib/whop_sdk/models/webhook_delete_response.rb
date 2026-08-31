# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Webhooks#delete
    class WebhookDeleteResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of the deleted resource.
      #
      #   @return [String]
      required :id, String

      # @!attribute deleted
      #   Always `true`: the resource was deleted.
      #
      #   @return [Boolean]
      required :deleted, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, deleted:)
      #   @param id [String] The ID of the deleted resource.
      #
      #   @param deleted [Boolean] Always `true`: the resource was deleted.
    end
  end
end
