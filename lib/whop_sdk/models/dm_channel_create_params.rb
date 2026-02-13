# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DmChannels#create
    class DmChannelCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute with_user_ids
      #   The list of user identifiers to include in the DM channel. Each entry can be an
      #   email, username, or user ID (e.g. 'user_xxxxx').
      #
      #   @return [Array<String>]
      required :with_user_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute company_id
      #   The unique identifier of the company to scope this DM channel to. When set, the
      #   channel is visible only within that company context.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute custom_name
      #   A custom display name for the DM channel. For example, 'Project Discussion'.
      #
      #   @return [String, nil]
      optional :custom_name, String, nil?: true

      # @!method initialize(with_user_ids:, company_id: nil, custom_name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::DmChannelCreateParams} for more details.
      #
      #   @param with_user_ids [Array<String>] The list of user identifiers to include in the DM channel. Each entry can be an
      #
      #   @param company_id [String, nil] The unique identifier of the company to scope this DM channel to. When set, the
      #
      #   @param custom_name [String, nil] A custom display name for the DM channel. For example, 'Project Discussion'.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
