# frozen_string_literal: true

module WhopSDK
  module Models
    class PageInfo < WhopSDK::Internal::Type::BaseModel
      # @!attribute end_cursor
      #   When paginating forwards, the cursor to continue.
      #
      #   @return [String, nil]
      required :end_cursor, String, nil?: true

      # @!attribute has_next_page
      #   When paginating forwards, are there more items?
      #
      #   @return [Boolean]
      required :has_next_page, WhopSDK::Internal::Type::Boolean

      # @!attribute has_previous_page
      #   When paginating backwards, are there more items?
      #
      #   @return [Boolean]
      required :has_previous_page, WhopSDK::Internal::Type::Boolean

      # @!attribute start_cursor
      #   When paginating backwards, the cursor to continue.
      #
      #   @return [String, nil]
      required :start_cursor, String, nil?: true

      # @!method initialize(end_cursor:, has_next_page:, has_previous_page:, start_cursor:)
      #   Information about pagination in a connection.
      #
      #   @param end_cursor [String, nil] When paginating forwards, the cursor to continue.
      #
      #   @param has_next_page [Boolean] When paginating forwards, are there more items?
      #
      #   @param has_previous_page [Boolean] When paginating backwards, are there more items?
      #
      #   @param start_cursor [String, nil] When paginating backwards, the cursor to continue.
    end
  end
end
