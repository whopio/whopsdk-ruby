# frozen_string_literal: true

module Whop_sdk
  module Types
    class AutomationActor < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::AutomationActorObject }, optional: false, nullable: false
    end
  end
end
