# frozen_string_literal: true

module Whop_sdk
  module Types
    class AutomationStepMessageConfig < Internal::Types::Model
      field :attachment_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :sender_id, -> { String }, optional: false, nullable: true
    end
  end
end
