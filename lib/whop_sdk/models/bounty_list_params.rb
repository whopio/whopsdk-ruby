# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Bounties#list
    class BountyListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute direction
      #   The direction of the sort.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }, nil?: true

      # @!attribute experience_id
      #   The experience to list bounties for. When omitted, returns bounties with no
      #   experience.
      #
      #   @return [String, nil]
      optional :experience_id, String, nil?: true

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute status
      #   The available bounty statuses to choose from.
      #
      #   @return [Symbol, WhopSDK::Models::BountyListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::BountyListParams::Status }, nil?: true

      # @!method initialize(after: nil, before: nil, direction: nil, experience_id: nil, first: nil, last: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::BountyListParams} for more details.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param experience_id [String, nil] The experience to list bounties for. When omitted, returns bounties with no expe
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param status [Symbol, WhopSDK::Models::BountyListParams::Status, nil] The available bounty statuses to choose from.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The available bounty statuses to choose from.
      module Status
        extend WhopSDK::Internal::Type::Enum

        PUBLISHED = :published
        ARCHIVED = :archived

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
