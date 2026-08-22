# frozen_string_literal: true

module Whop_sdk
  module Types
    # The payment associated with the dispute alert.
    class DisputeAlertListItemPayment < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
