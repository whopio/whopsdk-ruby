# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AdGroups#update
    class AdGroupUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute budget
      #   Budget amount in dollars. The interpretation (daily or lifetime) follows the ad
      #   group's existing budget type.
      #
      #   @return [Float, nil]
      optional :budget, Float, nil?: true

      # @!attribute title
      #   Human-readable ad group title.
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(id:, budget: nil, title: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AdGroupUpdateParams} for more details.
      #
      #   @param id [String]
      #
      #   @param budget [Float, nil] Budget amount in dollars. The interpretation (daily or lifetime) follows the ad
      #
      #   @param title [String, nil] Human-readable ad group title.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
