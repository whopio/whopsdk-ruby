# frozen_string_literal: true

module Whop_sdk
  module People
    module Types
      class ListPeopleRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :source, -> { String }, optional: true, nullable: false

        field :attribution_model, -> { Whop_sdk::People::Types::ListPeopleRequestAttributionModel }, optional: true, nullable: false

        field :event_name, -> { String }, optional: true, nullable: false

        field :custom_event, -> { String }, optional: true, nullable: false

        field :event_from, -> { String }, optional: true, nullable: false

        field :event_to, -> { String }, optional: true, nullable: false

        field :audience_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :has_purchased, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :contactable, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :first_seen_within_days, -> { Integer }, optional: true, nullable: false

        field :last_seen_within_days, -> { Integer }, optional: true, nullable: false

        field :first_seen_after, -> { String }, optional: true, nullable: false

        field :first_seen_before, -> { String }, optional: true, nullable: false

        field :last_seen_after, -> { String }, optional: true, nullable: false

        field :last_seen_before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :order, -> { Whop_sdk::People::Types::ListPeopleRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::People::Types::ListPeopleRequestDirection }, optional: true, nullable: false
      end
    end
  end
end
