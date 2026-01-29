# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Reactions#delete
    class ReactionDeleteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute emoji
      #   The emoji to remove (e.g., :heart: or '😀').
      #
      #   @return [String, nil]
      optional :emoji, String, nil?: true

      # @!method initialize(emoji: nil, request_options: {})
      #   @param emoji [String, nil] The emoji to remove (e.g., :heart: or '😀').
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
