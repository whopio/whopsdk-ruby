# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::SocialAccounts#connect
    class SocialAccountConnectResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute authorize_url
      #   The OAuth authorization URL to redirect the user to.
      #
      #   @return [String]
      required :authorize_url, String

      # @!method initialize(authorize_url:)
      #   @param authorize_url [String] The OAuth authorization URL to redirect the user to.
    end
  end
end
