# frozen_string_literal: true

module Whop_sdk
  module Types
    # The step's settings for its `action_type`: `delay_seconds` for a `wait`, and `sender_id` and `attachment_ids` for
    # an `email` or a `message`. Writing it replaces the whole object, except that a step keeps its `attachment_ids`
    # when the write leaves them out.
    class AutomationStepConfig < Internal::Types::Model
      extend Whop_sdk::Internal::Types::Union

      member -> { Whop_sdk::Types::AutomationStepWaitConfig }

      member -> { Whop_sdk::Types::AutomationStepEmailConfig }

      member -> { Whop_sdk::Types::AutomationStepMessageConfig }
    end
  end
end
