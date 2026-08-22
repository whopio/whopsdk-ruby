# frozen_string_literal: true

module Whop_sdk
  module Events
    module Types
      # Tracking and attribution context.
      class CreateEventsRequestContext < Internal::Types::Model
        field :ad_campaign_id, -> { String }, optional: true, nullable: false

        field :ad_id, -> { String }, optional: true, nullable: false

        field :ad_set_id, -> { String }, optional: true, nullable: false

        field :fbc, -> { String }, optional: true, nullable: false

        field :fbclid, -> { String }, optional: true, nullable: false

        field :fbp, -> { String }, optional: true, nullable: false

        field :fingerprint, -> { String }, optional: true, nullable: false

        field :fingerprint_confidence, -> { Integer }, optional: true, nullable: false

        field :ga, -> { String }, optional: true, nullable: false

        field :gbraid, -> { String }, optional: true, nullable: false

        field :gclid, -> { String }, optional: true, nullable: false

        field :ig_sid, -> { String }, optional: true, nullable: false

        field :ip_address, -> { String }, optional: true, nullable: false

        field :language, -> { String }, optional: true, nullable: false

        field :li_fat_id, -> { String }, optional: true, nullable: false

        field :msclkid, -> { String }, optional: true, nullable: false

        field :rdt_cid, -> { String }, optional: true, nullable: false

        field :sccid, -> { String }, optional: true, nullable: false

        field :screen_resolution, -> { String }, optional: true, nullable: false

        field :timezone, -> { String }, optional: true, nullable: false

        field :ttclid, -> { String }, optional: true, nullable: false

        field :ttp, -> { String }, optional: true, nullable: false

        field :twclid, -> { String }, optional: true, nullable: false

        field :user_agent, -> { String }, optional: true, nullable: false

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
