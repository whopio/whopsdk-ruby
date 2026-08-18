# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AIChats#list
    class AIChatListParams < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute only_active_crons
      #   When true, returns only chats with an active cron schedule
      #
      #   @return [Boolean, nil]
      optional :only_active_crons, WhopSDK::Internal::Type::Boolean

      # @!method initialize(after: nil, before: nil, first: nil, last: nil, only_active_crons: nil, request_options: {})
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param only_active_crons [Boolean] When true, returns only chats with an active cron schedule
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
