# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::People#retrieve
    class PersonRetrieveParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute person_id
      #
      #   @return [String]
      required :person_id, String

      # @!attribute account_id
      #   The ID of the account, which will look like biz\_******\*******. Optional for
      #   account API keys; required for credentials that can access multiple accounts.
      #
      #   @return [String, nil]
      optional :account_id, String

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

      # @!method initialize(person_id:, account_id: nil, from: nil, to: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::PersonRetrieveParams} for more details.
      #
      #   @param person_id [String]
      #
      #   @param account_id [String] The ID of the account, which will look like biz\_******\*******. Optional for
      #   acco
      #
      #   @param from [Integer] Start of the time range as a Unix timestamp.
      #
      #   @param to [Integer] End of the time range as a Unix timestamp. Defaults to now.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
