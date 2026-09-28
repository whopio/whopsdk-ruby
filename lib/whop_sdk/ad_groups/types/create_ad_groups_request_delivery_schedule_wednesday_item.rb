# frozen_string_literal: true

module Whop_sdk
  module AdGroups
    module Types
      class CreateAdGroupsRequestDeliveryScheduleWednesdayItem < Internal::Types::Model
        field :end_, -> { String }, optional: false, nullable: false, api_name: "end"

        field :start, -> { String }, optional: false, nullable: false
      end
    end
  end
end
