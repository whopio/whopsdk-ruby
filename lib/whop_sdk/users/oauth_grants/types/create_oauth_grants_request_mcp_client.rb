# frozen_string_literal: true

module Whop_sdk
  module Users
    module OauthGrants
      module Types
        # The downstream MCP client displayed on the consent screen. Requires explicit consent even when the upstream
        # app already has a grant. Bound to the authorization code and returned on token exchange so the MCP server can
        # verify the approved client.
        class CreateOauthGrantsRequestMcpClient < Internal::Types::Model
          field :client_id, -> { String }, optional: false, nullable: false

          field :client_name, -> { String }, optional: false, nullable: false

          field :redirect_uri, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
