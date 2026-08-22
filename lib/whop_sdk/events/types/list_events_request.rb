# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ListEventsRequest < Internal::Types::Model
        field :identifier, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :from, -> { String }, optional: true, nullable: false

        field :to, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::Events::Types::ListEventsRequestDirection }, optional: true, nullable: false

        field :event, -> { String }, optional: true, nullable: false

        field :source, -> { String }, optional: true, nullable: false

        field :attribution_model, -> { Whop_sdk::Events::Types::ListEventsRequestAttributionModel }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :city, -> { String }, optional: true, nullable: false

        field :device, -> { String }, optional: true, nullable: false

        field :browser, -> { String }, optional: true, nullable: false

        field :os, -> { String }, optional: true, nullable: false

        field :utm_source, -> { String }, optional: true, nullable: false

        field :hostname, -> { String }, optional: true, nullable: false

        field :page, -> { String }, optional: true, nullable: false
      end
    end
  end
end
