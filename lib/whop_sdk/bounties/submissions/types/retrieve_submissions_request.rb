# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Submissions
      module Types
        class RetrieveSubmissionsRequest < Internal::Types::Model
          field :bounty_id, -> { String }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
