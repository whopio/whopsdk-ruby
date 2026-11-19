# frozen_string_literal: true

module Whop_sdk
  module SuspensionAppeals
    module Types
      class ContextSuspensionAppealsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
