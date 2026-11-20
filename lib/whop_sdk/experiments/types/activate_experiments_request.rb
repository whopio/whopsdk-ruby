# frozen_string_literal: true

module Whop_sdk
  module Experiments
    module Types
      class ActivateExperimentsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false

        field :duration_days, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
