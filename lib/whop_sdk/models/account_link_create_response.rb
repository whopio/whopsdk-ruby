# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AccountLinks#create
    class AccountLinkCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute expires_at
      #   The timestamp after which this account link URL is no longer valid.
      #
      #   @return [Time]
      required :expires_at, Time

      # @!attribute url
      #   The temporary URL to redirect the user to for account access. Expires at the
      #   time specified by expires_at.
      #
      #   @return [String]
      required :url, String

      # @!method initialize(expires_at:, url:)
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::AccountLinkCreateResponse} for more details.
      #
      #   A temporary, time-limited URL that grants a user access to an external account
      #   management page.
      #
      #   @param expires_at [Time] The timestamp after which this account link URL is no longer valid.
      #
      #   @param url [String] The temporary URL to redirect the user to for account access. Expires at the tim
    end
  end
end
