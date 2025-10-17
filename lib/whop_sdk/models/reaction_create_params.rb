# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Reactions#create
    class ReactionCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute resource_id
      #   The ID of the post or message to react to.
      #
      #   @return [String]
      required :resource_id, String

      # @!attribute emoji
      #   The emoji to react with (e.g., :heart: or '😀'). It will be ignored in forums,
      #   as everything will be :heart:
      #
      #   @return [String, nil]
      optional :emoji, String, nil?: true

      # @!method initialize(resource_id:, emoji: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ReactionCreateParams} for more details.
      #
      #   @param resource_id [String] The ID of the post or message to react to.
      #
      #   @param emoji [String, nil] The emoji to react with (e.g., :heart: or '😀'). It will be ignored in forums, a
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
