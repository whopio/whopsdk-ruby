# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdCampaigns#update
    class AdCampaignUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute budget
      #   The campaign budget in dollars. The interpretation (daily or lifetime) follows
      #   the campaign's existing budget type.
      #
      #   @return [Float, nil]
      optional :budget, Float, nil?: true

      # @!attribute desired_cpr
      #   The advertiser's desired cost per result in dollars.
      #
      #   @return [Float, nil]
      optional :desired_cpr, Float, nil?: true

      # @!method initialize(id:, budget: nil, desired_cpr: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdCampaignUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param budget [Float, nil] The campaign budget in dollars. The interpretation (daily or lifetime) follows t
      #
      #   @param desired_cpr [Float, nil] The advertiser's desired cost per result in dollars.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
