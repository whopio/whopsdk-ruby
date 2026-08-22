# frozen_string_literal: true

module Whop_sdk
  module BountySubmissions
    module Types
      class SubmitBountySubmissionsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :deliverable, -> { Whop_sdk::BountySubmissions::Types::SubmitBountySubmissionsRequestDeliverable }, optional: true, nullable: false
      end
    end
  end
end
