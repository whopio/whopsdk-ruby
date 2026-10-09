# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Types
      class ReferredUsersPartnersRequest < Internal::Types::Model
        field :user_id, -> { Whop_sdk::Partners::Types::ReferredUsersPartnersRequestUserID }, optional: true, nullable: false

        field :earning_partner_id, -> { String }, optional: true, nullable: false

        field :earning_partner_username, -> { String }, optional: true, nullable: false

        field :referring_account_id, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :has_businesses, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :has_earning_businesses, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :order, -> { Whop_sdk::Partners::Types::ReferredUsersPartnersRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Partners::Types::ReferredUsersPartnersRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
