# frozen_string_literal: true

module Whop_sdk
  module AutomationEnrollments
    module Types
      class ListAutomationEnrollmentsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :automation_id, -> { String }, optional: true, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::AutomationEnrollments::Types::ListAutomationEnrollmentsRequestStatus }, optional: true, nullable: false

        field :version, -> { Integer }, optional: true, nullable: false

        field :order, -> { Whop_sdk::AutomationEnrollments::Types::ListAutomationEnrollmentsRequestOrder }, optional: true, nullable: false

        field :direction, -> { Whop_sdk::AutomationEnrollments::Types::ListAutomationEnrollmentsRequestDirection }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false
      end
    end
  end
end
