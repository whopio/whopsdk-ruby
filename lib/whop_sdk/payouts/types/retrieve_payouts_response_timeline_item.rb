# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Types
      class RetrievePayoutsResponseTimelineItem < Internal::Types::Model
        field :error_message, -> { String }, optional: false, nullable: true

        field :estimated_arrival, -> { String }, optional: false, nullable: true

        field :status, -> { Whop_sdk::Payouts::Types::RetrievePayoutsResponseTimelineItemStatus }, optional: false, nullable: false

        field :status_detail, -> { String }, optional: false, nullable: true

        field :timestamp, -> { String }, optional: false, nullable: true
      end
    end
  end
end
