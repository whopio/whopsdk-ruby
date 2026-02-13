# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Reactions#delete
    class ReactionDeleteParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute emoji
      #   The emoji to remove, in shortcode or unicode format. For example, ':heart:' or a
      #   unicode emoji. Required when the id refers to a message or post instead of a
      #   reaction.
      #
      #   @return [String, nil]
      optional :emoji, String, nil?: true

      # @!method initialize(emoji: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ReactionDeleteParams} for more details.
      #
      #   @param emoji [String, nil] The emoji to remove, in shortcode or unicode format. For example, ':heart:' or a
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
