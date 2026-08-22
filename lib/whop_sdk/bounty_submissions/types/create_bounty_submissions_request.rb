# frozen_string_literal: true

module Whop_sdk
  module BountySubmissions
    module Types
      class CreateBountySubmissionsRequest < Internal::Types::Model
        field :affiliate_code, -> { String }, optional: true, nullable: false

        field :bounty_id, -> { String }, optional: false, nullable: false

        field :deliverable, -> { Whop_sdk::BountySubmissions::Types::CreateBountySubmissionsRequestDeliverable }, optional: true, nullable: false

        field :metadata, -> { Whop_sdk::BountySubmissions::Types::CreateBountySubmissionsRequestMetadata }, optional: true, nullable: false
      end
    end
  end
end
