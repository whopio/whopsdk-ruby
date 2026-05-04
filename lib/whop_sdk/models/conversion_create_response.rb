# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Conversions#create
    class ConversionCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the conversion
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:)
      #   A tracked conversion event
      #
      #   @param id [String] The unique identifier for the conversion
    end
  end
end
