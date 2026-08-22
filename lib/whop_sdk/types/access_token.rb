# frozen_string_literal: true

module Whop_sdk
  module Types
    # A short-lived access token used to authenticate API requests on behalf of a user.
    class AccessToken < Internal::Types::Model
      field :expires_at, -> { String }, optional: false, nullable: false

      field :token, -> { String }, optional: false, nullable: false
    end
  end
end
