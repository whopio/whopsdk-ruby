# frozen_string_literal: true

module Whop_sdk
  module BountySubmissions
    module Types
      class DeleteBountySubmissionsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
