# frozen_string_literal: true

module Whop_sdk
  module Users
    module OauthGrants
      module Types
        class ListOauthGrantsRequest < Internal::Types::Model
          field :app_id, -> { String }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false

          field :order, -> { Whop_sdk::Users::OauthGrants::Types::ListOauthGrantsRequestOrder }, optional: true, nullable: false

          field :direction, -> { Whop_sdk::Users::OauthGrants::Types::ListOauthGrantsRequestDirection }, optional: true, nullable: false
        end
      end
    end
  end
end
