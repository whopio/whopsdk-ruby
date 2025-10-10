# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::SupportChannels#list
    class SupportChannelListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to list chat channels for
      #
      #   @return [String]
      required :company_id, String

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
      #   @return [Symbol, Whopsdk::Models::Direction, nil]
      optional :direction, enum: -> { Whopsdk::Direction }, nil?: true

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

      # @!attribute open_
      #   Filter for tickets where customer sent the last message (needs response) AND not
      #   resolved. Set to true to only return open channels, false to only return
      #   resolved channels.
      #
      #   @return [Boolean, nil]
      optional :open_, Whopsdk::Internal::Type::Boolean, nil?: true

      # @!attribute order
      #   Sort options for message channels
      #
      #   @return [Symbol, Whopsdk::Models::SupportChannelListParams::Order, nil]
      optional :order, enum: -> { Whopsdk::SupportChannelListParams::Order }, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, open_: nil, order: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::SupportChannelListParams} for more details.
      #
      #   @param company_id [String] The ID of the company to list chat channels for
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param direction [Symbol, Whopsdk::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param open_ [Boolean, nil] Filter for tickets where customer sent the last message (needs response) AND not
      #
      #   @param order [Symbol, Whopsdk::Models::SupportChannelListParams::Order, nil] Sort options for message channels
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # Sort options for message channels
      module Order
        extend Whopsdk::Internal::Type::Enum

        CREATED_AT = :created_at
        LAST_POST_SENT_AT = :last_post_sent_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
