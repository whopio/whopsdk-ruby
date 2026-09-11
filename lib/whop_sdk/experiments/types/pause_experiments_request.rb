# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class PauseExperimentsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
