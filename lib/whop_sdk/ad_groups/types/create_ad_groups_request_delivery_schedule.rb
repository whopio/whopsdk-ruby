# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      # Hours the ad group delivers in each week, keyed by day. Each window runs from `start` to `end` on the hour, with
      # `24:00` for midnight, and a day's windows can't overlap or touch. A day that's empty or left out doesn't
      # deliver. Replaces the whole schedule; `null` delivers at every hour. Some platforms need a lifetime
      # `budget_type` for a schedule, on the ad group or on its campaign when the campaign holds the budget.
      class CreateAdGroupsRequestDeliverySchedule < Internal::Types::Model
        field :friday, -> { Internal::Types::Array[Whop_sdk::AdGroups::Types::CreateAdGroupsRequestDeliveryScheduleFridayItem] }, optional: true, nullable: false

        field :monday, -> { Internal::Types::Array[Whop_sdk::AdGroups::Types::CreateAdGroupsRequestDeliveryScheduleMondayItem] }, optional: true, nullable: false

        field :saturday, -> { Internal::Types::Array[Whop_sdk::AdGroups::Types::CreateAdGroupsRequestDeliveryScheduleSaturdayItem] }, optional: true, nullable: false

        field :sunday, -> { Internal::Types::Array[Whop_sdk::AdGroups::Types::CreateAdGroupsRequestDeliveryScheduleSundayItem] }, optional: true, nullable: false

        field :thursday, -> { Internal::Types::Array[Whop_sdk::AdGroups::Types::CreateAdGroupsRequestDeliveryScheduleThursdayItem] }, optional: true, nullable: false

        field :tuesday, -> { Internal::Types::Array[Whop_sdk::AdGroups::Types::CreateAdGroupsRequestDeliveryScheduleTuesdayItem] }, optional: true, nullable: false

        field :wednesday, -> { Internal::Types::Array[Whop_sdk::AdGroups::Types::CreateAdGroupsRequestDeliveryScheduleWednesdayItem] }, optional: true, nullable: false
      end
    end
  end
end
