# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::DmChannels#create
    class DmChannelCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute with_user_ids
      #   The user ids to create a DM with. Can be email, username or user_id (tag)
      #
      #   @return [Array<String>]
      required :with_user_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute company_id
      #   The ID of the company to scope this DM channel to.
      #
      #   @return [String, nil]
      optional :company_id, String, nil?: true

      # @!attribute custom_name
      #   The custom name for the DM channel
      #
      #   @return [String, nil]
      optional :custom_name, String, nil?: true

      # @!method initialize(with_user_ids:, company_id: nil, custom_name: nil, request_options: {})
      #   @param with_user_ids [Array<String>] The user ids to create a DM with. Can be email, username or user_id (tag)
      #
      #   @param company_id [String, nil] The ID of the company to scope this DM channel to.
      #
      #   @param custom_name [String, nil] The custom name for the DM channel
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
