# frozen_string_literal: true

module Whop_sdk
  module Types
    class SetupStatus < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :last_setup_error, -> { Whop_sdk::Types::SetupLastSetupError }, optional: false, nullable: true

      field :next_action, -> { Whop_sdk::Types::PaymentNextAction }, optional: false, nullable: true

      field :object, -> { String }, optional: false, nullable: false

      field :return_url, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::SetupStatusStatus }, optional: false, nullable: false
    end
  end
end
