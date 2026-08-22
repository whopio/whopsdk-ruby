# frozen_string_literal: true

module Whop_sdk
  module Bounties
    module Submissions
      module Types
        class ListSubmissionsResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::PublicBountySubmission] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Bounties::Submissions::Types::ListSubmissionsResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
