# frozen_string_literal: true

module Whop_sdk
  module Users
    module OauthGrants
      module Types
        class CreateOauthGrantsRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: true, nullable: false

          field :client_id, -> { String }, optional: false, nullable: false

          field :code_challenge, -> { String }, optional: false, nullable: false

          field :code_challenge_method, -> { Whop_sdk::Users::OauthGrants::Types::CreateOauthGrantsRequestCodeChallengeMethod }, optional: false, nullable: false

          field :consent_shown, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :nonce, -> { String }, optional: true, nullable: false

          field :redirect_uri, -> { String }, optional: false, nullable: false

          field :requested_scopes, -> { Internal::Types::Array[String] }, optional: false, nullable: false

          field :response_type, -> { Whop_sdk::Users::OauthGrants::Types::CreateOauthGrantsRequestResponseType }, optional: true, nullable: false

          field :state, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
