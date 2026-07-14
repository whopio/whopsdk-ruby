# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Events#list
    class EventListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute person_id
      #   The ID of the person.
      #
      #   @return [String]
      required :person_id, String

      # @!attribute account_id
      #   The ID of the account, which will look like biz\_******\*******. Optional for
      #   account API keys; required for credentials that can access multiple accounts.
      #
      #   @return [String, nil]
      optional :account_id, String

      # @!attribute after
      #   A cursor for fetching events after a previous page.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   A cursor for fetching events before a later page.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute first
      #   The number of events to return.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute from
      #   Start of the time range as a Unix timestamp.
      #
      #   @return [Integer, nil]
      optional :from, Integer

      # @!attribute to
      #   End of the time range as a Unix timestamp. Defaults to now.
      #
      #   @return [Integer, nil]
      optional :to, Integer

      # @!method initialize(person_id:, account_id: nil, after: nil, before: nil, first: nil, from: nil, to: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::EventListParams} for more details.
      #
      #   @param person_id [String] The ID of the person.
      #
      #   @param account_id [String] The ID of the account, which will look like biz\_******\*******. Optional for
      #   acco
      #
      #   @param after [String] A cursor for fetching events after a previous page.
      #
      #   @param before [String] A cursor for fetching events before a later page.
      #
      #   @param first [Integer] The number of events to return.
      #
      #   @param from [Integer] Start of the time range as a Unix timestamp.
      #
      #   @param to [Integer] End of the time range as a Unix timestamp. Defaults to now.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
