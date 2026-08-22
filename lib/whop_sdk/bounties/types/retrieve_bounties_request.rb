# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Types
      class RetrieveBountiesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
