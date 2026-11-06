# frozen_string_literal: true

module Whop_sdk
  module Automations
    module Types
      # Who to enroll: up to 1,000 member IDs, or an object of `GET /members` filters. An empty object enrolls every
      # member.
      class TriggerAutomationsRequestMembers < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        member -> { Internal::Types::Array[String] }

        member -> { Internal::Types::Hash[String, Object] }
      end
    end
  end
end
