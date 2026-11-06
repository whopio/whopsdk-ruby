# frozen_string_literal: true

module Whop_sdk
  module Types
    class AutomationStepEmailConfig < Internal::Types::Model
      field :sender_id, -> { String }, optional: false, nullable: true
    end
  end
end
