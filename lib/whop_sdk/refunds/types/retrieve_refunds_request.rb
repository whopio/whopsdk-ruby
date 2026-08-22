# frozen_string_literal: true

module Whop_sdk
  module Refunds
    module Types
      class RetrieveRefundsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
