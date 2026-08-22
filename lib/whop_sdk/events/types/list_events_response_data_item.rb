# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ListEventsResponseDataItem < Internal::Types::Model
        field :context, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemContext }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :custom_name, -> { String }, optional: true, nullable: false

        field :event_id, -> { String }, optional: false, nullable: false

        field :event_name, -> { String }, optional: false, nullable: false

        field :event_time, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :path, -> { String }, optional: true, nullable: false

        field :person_id, -> { String }, optional: false, nullable: false

        field :questions, -> { Internal::Types::Array[Whop_sdk::Events::Types::ListEventsResponseDataItemQuestionsItem] }, optional: true, nullable: false

        field :recommended_action_chain_id, -> { String }, optional: true, nullable: false

        field :recommended_action_shown_position, -> { Integer }, optional: true, nullable: false

        field :referrer_url, -> { String }, optional: true, nullable: false

        field :related, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemRelated }, optional: true, nullable: false

        field :total_usd_amount, -> { Integer }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :user, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemUser }, optional: true, nullable: false

        field :value, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
