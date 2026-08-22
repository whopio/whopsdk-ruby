# frozen_string_literal: true

module Whop_sdk
  module Internal
    class CursorPageIterator
      include Enumerable

      # The raw HTTP response from the most recent page response.
      # @return [Net::HTTPResponse, nil]
      attr_reader :http_response

      # Instantiates a CursorPageIterator, an Enumerable class which wraps calls to a cursor-based paginated API and yields pages of items.
      #
      # @param initial_cursor [String] The initial cursor to use when iterating, if any.
      # @param cursor_field [Symbol] The name of the field in API responses to extract the next cursor from.
      # @param block [Proc] A block which is responsible for receiving a cursor to use and returning the given page from the API.
      #   The block should return a two-element array: [parsed_page, raw_http_response].
      # @return [Whop_sdk::Internal::CursorPageIterator]
      def initialize(initial_cursor:, cursor_field:, &block)
        @need_initial_load = initial_cursor.nil?
        @cursor = initial_cursor
        @cursor_field = cursor_field
        @get_next_page = block
        @http_response = nil
      end

      # Iterates over each page returned by the API.
      #
      # @param block [Proc] The block which each retrieved page is yielded to.
      # @return [NilClass]
      def each(&block)
        while (page = next_page)
          block.call(page)
        end
      end

      # Whether another page will be available from the API.
      #
      # @return [Boolean]
      def next?
        @need_initial_load || !@cursor.nil?
      end

      # Retrieves the next page from the API.
      #
      # @return [Object, nil]
      def next_page
        return if !@need_initial_load && @cursor.nil?

        @need_initial_load = false
        result = @get_next_page.call(@cursor)
        if result.is_a?(Array)
          fetched_page, raw_response = result
          @http_response = raw_response
        else
          fetched_page = result
        end
        @cursor = extract_cursor(fetched_page)
        fetched_page
      end

      private

      # The generated clients pass cursor_field: :end_cursor, but the response models
      # declare end_cursor on page_info rather than at the root, and Internal::Types::Model
      # has no method_missing — so the root lookup raises NoMethodError on the first page of
      # every list. Remove this file from .fernignore once fern-ruby-sdk emits the nested
      # lookup itself.
      def extract_cursor(page)
        return page.send(@cursor_field) if page.respond_to?(@cursor_field)

        page_info = page.respond_to?(:page_info) ? page.page_info : nil
        return page_info.send(@cursor_field) if page_info.respond_to?(@cursor_field)

        nil
      end
    end
  end
end
