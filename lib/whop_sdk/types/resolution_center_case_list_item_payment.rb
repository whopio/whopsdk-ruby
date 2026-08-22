# frozen_string_literal: true

module Whop_sdk
  module Types
    # The payment record that is the subject of this resolution case.
    class ResolutionCenterCaseListItemPayment < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
