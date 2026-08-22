# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      class UpdateReturnURLSetupIntentsRequest < Internal::Types::Model
        field :setup_intent_id, -> { String }, optional: false, nullable: false

        field :return_url, -> { String }, optional: false, nullable: false
      end
    end
  end
end
