# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      # UTM parameters, ad click ids and ad ids, as the page reported them. Keys the event did not carry are left out.
      class PostEventsCreatedPayloadDataEventsItemContext < Internal::Types::Model
        field :ad_campaign_id, -> { String }, optional: true, nullable: false

        field :ad_id, -> { String }, optional: true, nullable: false

        field :ad_set_id, -> { String }, optional: true, nullable: false

        field :fbclid, -> { String }, optional: true, nullable: false

        field :gbraid, -> { String }, optional: true, nullable: false

        field :gclid, -> { String }, optional: true, nullable: false

        field :ig_sid, -> { String }, optional: true, nullable: false

        field :li_fat_id, -> { String }, optional: true, nullable: false

        field :msclkid, -> { String }, optional: true, nullable: false

        field :rdt_cid, -> { String }, optional: true, nullable: false

        field :sccid, -> { String }, optional: true, nullable: false

        field :ttclid, -> { String }, optional: true, nullable: false

        field :twclid, -> { String }, optional: true, nullable: false

        field :utm_campaign, -> { String }, optional: true, nullable: false

        field :utm_content, -> { String }, optional: true, nullable: false

        field :utm_id, -> { String }, optional: true, nullable: false

        field :utm_medium, -> { String }, optional: true, nullable: false

        field :utm_source, -> { String }, optional: true, nullable: false

        field :utm_term, -> { String }, optional: true, nullable: false

        field :wbraid, -> { String }, optional: true, nullable: false
      end
    end
  end
end
