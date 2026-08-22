# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      class ListEventsResponseDataItemContext < Internal::Types::Model
        field :ad_campaign_id, -> { String }, optional: true, nullable: false

        field :ad_click_id, -> { String }, optional: true, nullable: false

        field :ad_click_type, -> { String }, optional: true, nullable: false

        field :ad_id, -> { String }, optional: true, nullable: false

        field :ad_set_id, -> { String }, optional: true, nullable: false

        field :source_type, -> { Whop_sdk::Events::Types::ListEventsResponseDataItemContextSourceType }, optional: true, nullable: false

        field :utm_campaign, -> { String }, optional: true, nullable: false

        field :utm_content, -> { String }, optional: true, nullable: false

        field :utm_medium, -> { String }, optional: true, nullable: false

        field :utm_source, -> { String }, optional: true, nullable: false

        field :utm_term, -> { String }, optional: true, nullable: false
      end
    end
  end
end
