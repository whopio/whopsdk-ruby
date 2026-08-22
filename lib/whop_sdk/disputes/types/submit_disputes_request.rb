# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      class SubmitDisputesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
