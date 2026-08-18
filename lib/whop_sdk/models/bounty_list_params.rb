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
      optional :after, String

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute direction
      #   Sort direction. Defaults to descending.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }

      # @!attribute experience_id
      #   The experience to list bounties for. When omitted, returns bounties with no
      #   experience.
      #
      #   @return [String, nil]
      optional :experience_id, String

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute status
      #   Filter bounties by status.
      #
      #   @return [Symbol, WhopSDK::Models::BountyListParams::Status, nil]
      optional :status, enum: -> { WhopSDK::BountyListParams::Status }

      # @!method initialize(after: nil, before: nil, direction: nil, experience_id: nil, first: nil, last: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::BountyListParams} for more details.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction] Sort direction. Defaults to descending.
      #
      #   @param experience_id [String] The experience to list bounties for. When omitted, returns bounties with no expe
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param status [Symbol, WhopSDK::Models::BountyListParams::Status] Filter bounties by status.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Filter bounties by status.
      module Status
        extend WhopSDK::Internal::Type::Enum

        PUBLISHED = :published
        ARCHIVED = :archived
        SCHEDULED = :scheduled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
