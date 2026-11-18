# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      class WithdrawResolutionCenterCasesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :message, -> { String }, optional: true, nullable: false
      end
    end
  end
end
