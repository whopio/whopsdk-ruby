# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::AccountLinks#create
    class AccountLinkCreateResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute expires_at
      #   The expiration timestamp of the url.
      #
      #   @return [Time]
      required :expires_at, Time

      # @!attribute url
      #   The URL to navigate the user to.
      #
      #   @return [String]
      required :url, String

      # @!method initialize(expires_at:, url:)
      #   An object representing a url that a user can be directed to to access their
      #   account.
      #
      #   @param expires_at [Time] The expiration timestamp of the url.
      #
      #   @param url [String] The URL to navigate the user to.
    end
  end
end
