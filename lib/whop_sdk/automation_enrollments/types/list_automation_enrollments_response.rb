# frozen_string_literal: true

module Whop_sdk
  module AutomationEnrollments
    module Types
      class ListAutomationEnrollmentsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::AutomationEnrollment] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::AutomationEnrollments::Types::ListAutomationEnrollmentsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
