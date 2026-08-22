# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Submissions
      module Types
        class ListSubmissionsRequest < Internal::Types::Model
          field :bounty_id, -> { String }, optional: false, nullable: false

          field :status, -> { Whop_sdk::Bounties::Submissions::Types::ListSubmissionsRequestStatus }, optional: true, nullable: false

          field :created_after, -> { String }, optional: true, nullable: false

          field :created_before, -> { String }, optional: true, nullable: false

          field :order, -> { Whop_sdk::Bounties::Submissions::Types::ListSubmissionsRequestOrder }, optional: true, nullable: false

          field :direction, -> { Whop_sdk::Bounties::Submissions::Types::ListSubmissionsRequestDirection }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false

          field :last, -> { Integer }, optional: true, nullable: false

          field :before, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
