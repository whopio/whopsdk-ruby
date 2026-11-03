# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class PostEventsCreatedPayloadDataEventsItem < Internal::Types::Model
        field :context, -> { Whop_sdk::Events::Types::PostEventsCreatedPayloadDataEventsItemContext }, optional: false, nullable: false

        field :custom_name, -> { String }, optional: true, nullable: false

        field :event_name, -> { String }, optional: false, nullable: false

        field :event_time, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :referrer_url, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :user, -> { Whop_sdk::Events::Types::PostEventsCreatedPayloadDataEventsItemUser }, optional: false, nullable: false

        field :value, -> { Whop_sdk::Types::Money }, optional: true, nullable: false

        field :variant_id, -> { String }, optional: true, nullable: false

        field :wuid, -> { String }, optional: false, nullable: true
      end
    end
  end
end
