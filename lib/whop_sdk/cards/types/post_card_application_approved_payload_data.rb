# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      class PostCardApplicationApprovedPayloadData < Internal::Types::Model
        field :hosted_url, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :object, -> { Whop_sdk::Cards::Types::PostCardApplicationApprovedPayloadDataObject }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Cards::Types::PostCardApplicationApprovedPayloadDataStatus }, optional: false, nullable: false
      end
    end
  end
end
