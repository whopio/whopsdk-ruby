# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::PromoCodes#delete
    class PromoCodeDeleteResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute deleted
      #
      #   @return [Boolean]
      required :deleted, WhopSDK::Internal::Type::Boolean

      # @!method initialize(id:, deleted:)
      #   @param id [String]
      #   @param deleted [Boolean]
    end
  end
end
