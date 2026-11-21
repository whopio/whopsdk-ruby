# frozen_string_literal: true

module Whop_sdk
  module Types
    class AutomationActor < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :resource_type, -> { Whop_sdk::Types::AutomationActorResourceType }, optional: false, nullable: false
    end
  end
end
