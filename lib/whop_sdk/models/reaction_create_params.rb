# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Reactions#create
    class ReactionCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute resource_id
      #   The unique identifier of the message or forum post to react to.
      #
      #   @return [String]
      required :resource_id, String

      # @!attribute emoji
      #   The emoji to react with, in shortcode or unicode format. For example, ':heart:'
      #   or a unicode emoji. Ignored in forums where reactions are always likes.
      #
      #   @return [String, nil]
      optional :emoji, String, nil?: true

      # @!attribute poll_option_id
      #   The unique identifier of a poll option to vote for. Only valid when the target
      #   message or post contains a poll.
      #
      #   @return [String, nil]
      optional :poll_option_id, String, nil?: true

      # @!method initialize(resource_id:, emoji: nil, poll_option_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::ReactionCreateParams} for more details.
      #
      #   @param resource_id [String] The unique identifier of the message or forum post to react to.
      #
      #   @param emoji [String, nil] The emoji to react with, in shortcode or unicode format. For example, ':heart:'
      #
      #   @param poll_option_id [String, nil] The unique identifier of a poll option to vote for. Only valid when the target m
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
