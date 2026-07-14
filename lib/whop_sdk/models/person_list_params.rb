# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::People#list
    class PersonListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute account_id
      #   The ID of the account, which will look like biz\_******\*******. Optional for
      #   account API keys; required for credentials that can access multiple accounts.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   A cursor for fetching people after a previous page.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor for fetching people before a later page.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute direction
      #   Sort direction. Defaults to desc.
      #
      #   @return [Symbol, WhopSDK::Models::PersonListParams::Direction, nil]
      optional :direction, enum: -> { WhopSDK::PersonListParams::Direction }

      # @!attribute filters
      #   A JSON-encoded array of filters, each with field, operator, and value keys.
      #
      #   @return [String, nil]
      optional :filters, String

      # @!attribute first
      #   The number of people to return (default 100, max 100).
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute from
      #   Start of the time range as a Unix timestamp. Defaults to 366 days before `to`.
      #
      #   @return [Integer, nil]
      optional :from, Integer

      # @!attribute sort
      #   Column to sort by (e.g. last_seen_at, ltv, purchase_count). Defaults to
      #   last_seen_at.
      #
      #   @return [String, nil]
      optional :sort, String

      # @!attribute to
      #   End of the time range as a Unix timestamp. Defaults to now.
      #
      #   @return [Integer, nil]
      optional :to, Integer

      # @!method initialize(account_id: nil, after: nil, before: nil, direction: nil, filters: nil, first: nil, from: nil, sort: nil, to: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PersonListParams} for more details.
      #
      #   @param account_id [String] The ID of the account, which will look like biz\_******\*******. Optional for
      #   acco
      #
      #   @param after [String] A cursor for fetching people after a previous page.
      #
      #   @param before [String] A cursor for fetching people before a later page.
      #
      #   @param direction [Symbol, WhopSDK::Models::PersonListParams::Direction] Sort direction. Defaults to desc.
      #
      #   @param filters [String] A JSON-encoded array of filters, each with field, operator, and value keys.
      #
      #   @param first [Integer] The number of people to return (default 100, max 100).
      #
      #   @param from [Integer] Start of the time range as a Unix timestamp. Defaults to 366 days before `to`.
      #
      #   @param sort [String] Column to sort by (e.g. last_seen_at, ltv, purchase_count). Defaults to last_see
      #
      #   @param to [Integer] End of the time range as a Unix timestamp. Defaults to now.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # Sort direction. Defaults to desc.
      module Direction
        extend WhopSDK::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
