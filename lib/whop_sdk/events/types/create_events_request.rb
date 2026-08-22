# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class CreateEventsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: false, nullable: false

        field :action_source, -> { Whop_sdk::Events::Types::CreateEventsRequestActionSource }, optional: true, nullable: false

        field :context, -> { Whop_sdk::Events::Types::CreateEventsRequestContext }, optional: true, nullable: false

        field :currency, -> { Whop_sdk::Events::Types::CreateEventsRequestCurrency }, optional: true, nullable: false

        field :custom_name, -> { String }, optional: true, nullable: false

        field :duration, -> { Integer }, optional: true, nullable: false

        field :event_id, -> { String }, optional: true, nullable: false

        field :event_name, -> { String }, optional: false, nullable: false

        field :event_time, -> { String }, optional: true, nullable: false

        field :plan_id, -> { String }, optional: true, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :referrer_url, -> { String }, optional: true, nullable: false

        field :resumed, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :source, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :user, -> { Whop_sdk::Events::Types::CreateEventsRequestUser }, optional: true, nullable: false

        field :value, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
