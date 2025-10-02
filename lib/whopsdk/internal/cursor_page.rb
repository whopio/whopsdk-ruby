# frozen_string_literal: true

module Whopsdk
  module Internal
    # @generic Elem
    #
    # @example
    #   if cursor_page.has_next?
    #     cursor_page = cursor_page.next_page
    #   end
    #
    # @example
    #   cursor_page.auto_paging_each do |app|
    #     puts(app)
    #   end
    class CursorPage
      include Whopsdk::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [PageInfo]
      attr_accessor :page_info

      # @return [Boolean]
      def next_page?
        !data.to_a.empty? && !page_info&.end_cursor.to_s.empty?
      end

      # @raise [Whopsdk::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Whopsdk::Internal::Util.deep_merge(@req, {query: {after: page_info&.end_cursor}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.data&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Whopsdk::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {data: Array => data}
          @data = data.map { Whopsdk::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        case page_data
        in {page_info: Hash | nil => page_info}
          @page_info =
            Whopsdk::Internal::Type::Converter.coerce(Whopsdk::Internal::CursorPage::PageInfo, page_info)
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Whopsdk::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end

      class PageInfo < Whopsdk::Internal::Type::BaseModel
        # @!attribute end_cursor
        #
        #   @return [String, nil]
        optional :end_cursor, String

        # @!method initialize(end_cursor: nil)
        #   @param end_cursor [String]
      end
    end
  end
end
