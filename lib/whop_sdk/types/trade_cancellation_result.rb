# frozen_string_literal: true

module Whop_sdk
  module Types
    class TradeCancellationResult < Internal::Types::Model
      field :error, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::TradeCancellationResultStatus }, optional: false, nullable: false
    end
  end
end
