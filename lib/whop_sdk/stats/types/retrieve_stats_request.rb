# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class RetrieveStatsRequest < Internal::Types::Model
        field :metric, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :from, -> { String }, optional: false, nullable: false

        field :to, -> { String }, optional: false, nullable: false

        field :interval, -> { Whop_sdk::Stats::Types::RetrieveStatsRequestInterval }, optional: true, nullable: false

        field :breakdown_by, -> { String }, optional: true, nullable: false

        field :convert_to, -> { String }, optional: true, nullable: false

        field :currency, -> { String }, optional: true, nullable: false

        field :time_zone, -> { String }, optional: true, nullable: false

        field :payment_method, -> { String }, optional: true, nullable: false

        field :card_network, -> { String }, optional: true, nullable: false

        field :dispute_reason, -> { String }, optional: true, nullable: false

        field :source, -> { String }, optional: true, nullable: false

        field :hostname, -> { String }, optional: true, nullable: false

        field :page, -> { String }, optional: true, nullable: false

        field :device_type, -> { String }, optional: true, nullable: false

        field :country_code, -> { String }, optional: true, nullable: false

        field :event_name, -> { String }, optional: true, nullable: false

        field :event_type, -> { Whop_sdk::Stats::Types::RetrieveStatsRequestEventType }, optional: true, nullable: false

        field :custom_name, -> { String }, optional: true, nullable: false

        field :segment, -> { String }, optional: true, nullable: false

        field :category, -> { String }, optional: true, nullable: false

        field :merchant, -> { String }, optional: true, nullable: false

        field :fee_type, -> { String }, optional: true, nullable: false

        field :product, -> { String }, optional: true, nullable: false

        field :status, -> { String }, optional: true, nullable: false

        field :access_level, -> { String }, optional: true, nullable: false

        field :most_recent_action, -> { String }, optional: true, nullable: false

        field :referred_user_id, -> { String }, optional: true, nullable: false

        field :ad_campaign_ids, -> { String }, optional: true, nullable: false

        field :ad_group_ids, -> { String }, optional: true, nullable: false

        field :ad_ids, -> { String }, optional: true, nullable: false

        field :snapshot_window, -> { Whop_sdk::Stats::Types::RetrieveStatsRequestSnapshotWindow }, optional: true, nullable: false

        field :event, -> { String }, optional: true, nullable: false
      end
    end
  end
end
