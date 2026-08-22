# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        class ListBusinessesRequest < Internal::Types::Model
          field :status, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestStatus }, optional: true, nullable: false

          field :has_earnings, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false

          field :order, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestOrder }, optional: true, nullable: false

          field :direction, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestDirection }, optional: true, nullable: false

          field :created_before, -> { String }, optional: true, nullable: false

          field :created_after, -> { String }, optional: true, nullable: false

          field :referred_user_id, -> { String }, optional: true, nullable: false

          field :referred_username, -> { String }, optional: true, nullable: false

          field :tier, -> { Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestTier }, optional: true, nullable: false
        end
      end
    end
  end
end
