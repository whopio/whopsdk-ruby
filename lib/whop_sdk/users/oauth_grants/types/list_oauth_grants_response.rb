# frozen_string_literal: true

module Whop_sdk
  module Users
    module OauthGrants
      module Types
        class ListOauthGrantsResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::OauthGrant] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Users::OauthGrants::Types::ListOauthGrantsResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
