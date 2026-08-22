# frozen_string_literal: true

module Whop_sdk
  module AuthorizedUsers
    module Types
      # Re-authentication proof required to perform this sensitive action.
      class CreateAuthorizedUsersRequestElevation < Internal::Types::Model
        field :authenticator_data, -> { String }, optional: true, nullable: false

        field :client_data_json, -> { String }, optional: true, nullable: false

        field :credential_id, -> { String }, optional: true, nullable: false

        field :email_code, -> { String }, optional: true, nullable: false

        field :signature, -> { String }, optional: true, nullable: false

        field :totp_code, -> { String }, optional: true, nullable: false

        field :use_finance_session, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
