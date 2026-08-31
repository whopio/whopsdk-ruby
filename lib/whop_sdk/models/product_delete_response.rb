# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Products#delete
    class ProductDeleteResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   ID of the deleted product.
      #
      #   @return [String]
      required :id, String

      # @!attribute deleted
      #   Always true.
      #
      #   @return [Boolean]
      required :deleted, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, deleted:)
      #   @param id [String] ID of the deleted product.
      #
      #   @param deleted [Boolean] Always true.
    end
  end
end
