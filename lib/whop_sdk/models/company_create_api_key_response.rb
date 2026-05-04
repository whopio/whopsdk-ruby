# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Companies#create_api_key
    class CompanyCreateAPIKeyResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique identifier for the authorized api key.
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   A user set name to identify an API key
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!attribute secret_key
      #   The secret key used to authenticate requests. Only returned at creation time.
      #
      #   @return [String]
      required :secret_key, String

      # @!method initialize(id:, name:, secret_key:)
      #   An API key created for a child company, including the one-time secret key.
      #
      #   @param id [String] The unique identifier for the authorized api key.
      #
      #   @param name [String, nil] A user set name to identify an API key
      #
      #   @param secret_key [String] The secret key used to authenticate requests. Only returned at creation time.
    end
  end
end
