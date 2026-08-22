# frozen_string_literal: true

module Whop_sdk
  module Types
    # The dispute associated with the dispute alert.
    class DisputeAlertListItemDispute < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
