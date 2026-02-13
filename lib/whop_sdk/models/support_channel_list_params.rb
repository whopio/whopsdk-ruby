# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SupportChannels#list
    class SupportChannelListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The unique identifier of the company to list support channels for.
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
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }, nil?: true

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
      #   Whether to filter by open or resolved support channels. Set to true to only
      #   return channels awaiting a response, or false for resolved channels.
      #
      #   @return [Boolean, nil]
      optional :open_, WhopSDK::Internal::Type::Boolean, nil?: true

      # @!attribute order
      #   Sort options for message channels
      #
      #   @return [Symbol, WhopSDK::Models::SupportChannelListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::SupportChannelListParams::Order }, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, open_: nil, order: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SupportChannelListParams} for more details.
      #
      #   @param company_id [String] The unique identifier of the company to list support channels for.
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param open_ [Boolean, nil] Whether to filter by open or resolved support channels. Set to true to only retu
      #
      #   @param order [Symbol, WhopSDK::Models::SupportChannelListParams::Order, nil] Sort options for message channels
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Sort options for message channels
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at
        LAST_POST_SENT_AT = :last_post_sent_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
