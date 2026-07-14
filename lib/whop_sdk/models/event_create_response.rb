# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Events#create
    class EventCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   @param id [String]
    end
  end
end
