# frozen_string_literal: true

module Whop_sdk
  module Types
    class Audience < Internal::Types::Model
      field :audience_type, -> { Whop_sdk::Types::AudienceAudienceType }, optional: false, nullable: false

      field :auto_refresh, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :error_message, -> { String }, optional: false, nullable: true

      field :filters, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :last_refreshed_at, -> { String }, optional: false, nullable: true

      field :lookalike_ratio, -> { Integer }, optional: false, nullable: true

      field :lookalike_starting_ratio, -> { Integer }, optional: false, nullable: true

      field :match_rates, -> { Internal::Types::Array[Whop_sdk::Types::AudienceMatchRate] }, optional: false, nullable: false

      field :matched_rows, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :platform_audience_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :processed_rows, -> { Integer }, optional: false, nullable: false

      field :progress_percent, -> { Integer }, optional: false, nullable: false

      field :source_audience_id, -> { String }, optional: false, nullable: true

      field :source_type, -> { Whop_sdk::Types::AudienceSourceType }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::AudienceStatus }, optional: false, nullable: false

      field :total_rows, -> { Integer }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
