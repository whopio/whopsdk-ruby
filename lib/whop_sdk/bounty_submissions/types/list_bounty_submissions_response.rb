# frozen_string_literal: true

module Whop_sdk
  module BountySubmissions
    module Types
      class ListBountySubmissionsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::BountySubmission] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::BountySubmissions::Types::ListBountySubmissionsResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
