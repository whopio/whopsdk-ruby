# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SupportChannels#list
    class SupportChannelListParams < WhopSDK::Internal::Type::BaseModel
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

      # @!attribute company_id
      #   The unique identifier of the company to list support channels for. Includes
      #   channels of child companies. When omitted, returns support channels across all
      #   companies the user has access to.
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!attribute direction
      #   The sort direction for the results. Use 'asc' for oldest first or 'desc' for
      #   newest first.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }

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

      # @!attribute open_
      #   Whether to filter by open or resolved support channels. Set to true to only
      #   return channels awaiting a response, or false for resolved channels.
      #
      #   @return [Boolean, nil]
      optional :open_, WhopSDK::Internal::Type::Boolean

      # @!attribute order
      #   The field to sort the support channels by, such as creation date or last message
      #   time.
      #
      #   @return [Symbol, WhopSDK::Models::SupportChannelListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::SupportChannelListParams::Order }

      # @!attribute view
      #   Filter support channels by the authenticated user's role. Defaults to admin.
      #   When the caller is a company API key (no user), only admin-visible channels are
      #   returned.
      #
      #   @return [Symbol, WhopSDK::Models::SupportChannelListParams::View, nil]
      optional :view, enum: -> { WhopSDK::SupportChannelListParams::View }

      # @!method initialize(after: nil, before: nil, company_id: nil, direction: nil, first: nil, last: nil, open_: nil, order: nil, view: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::SupportChannelListParams} for more details.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param company_id [String] The unique identifier of the company to list support channels for. Includes chan
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction] The sort direction for the results. Use 'asc' for oldest first or 'desc' for new
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param open_ [Boolean] Whether to filter by open or resolved support channels. Set to true to only retu
      #
      #   @param order [Symbol, WhopSDK::Models::SupportChannelListParams::Order] The field to sort the support channels by, such as creation date or last message
      #
      #   @param view [Symbol, WhopSDK::Models::SupportChannelListParams::View] Filter support channels by the authenticated user's role. Defaults to admin. Whe
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The field to sort the support channels by, such as creation date or last message
      # time.
      module Order
        extend WhopSDK::Internal::Type::Enum

        CREATED_AT = :created_at
        LAST_POST_SENT_AT = :last_post_sent_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter support channels by the authenticated user's role. Defaults to admin.
      # When the caller is a company API key (no user), only admin-visible channels are
      # returned.
      module View
        extend WhopSDK::Internal::Type::Enum

        ALL = :all
        ADMIN = :admin
        CUSTOMER = :customer

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
