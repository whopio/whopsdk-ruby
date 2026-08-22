# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      class RetrieveStatusSetupIntentsRequest < Internal::Types::Model
        field :setup_intent_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
