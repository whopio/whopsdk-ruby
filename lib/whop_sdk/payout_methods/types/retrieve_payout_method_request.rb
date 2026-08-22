# frozen_string_literal: true

module Whop_sdk
  module PayoutMethods
    module Types
      class RetrievePayoutMethodRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
