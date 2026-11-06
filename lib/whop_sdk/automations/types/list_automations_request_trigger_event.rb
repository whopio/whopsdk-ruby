# frozen_string_literal: true

module Whop_sdk
  module Automations
    module Types
      module ListAutomationsRequestTriggerEvent
        extend Whop_sdk::Internal::Types::Enum

        PAYMENT_SUCCEEDED = "payment.succeeded"
        PAYMENT_FAILED = "payment.failed"
        MEMBERSHIP_ACTIVATED = "membership.activated"
        MEMBERSHIP_TRIAL_ENDING_SOON = "membership.trial_ending_soon"
        MEMBER_CREATED = "member.created"
        INVOICE_CREATED = "invoice.created"
        INVOICE_PAID = "invoice.paid"
        INVOICE_PAST_DUE = "invoice.past_due"
        REFUND_CREATED = "refund.created"
        DISPUTE_CREATED = "dispute.created"
        RESOLUTION_CENTER_CASE_CREATED = "resolution_center_case.created"
        RESOLUTION_CENTER_CASE_DECIDED = "resolution_center_case.decided"
        COURSE_LESSON_INTERACTION_COMPLETED = "course_lesson_interaction.completed"
      end
    end
  end
end
