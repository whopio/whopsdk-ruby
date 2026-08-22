# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      class RetrieveDisputesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
