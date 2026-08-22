# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      class PostCardApplicationDeniedPayloadData < Internal::Types::Model
        field :hosted_url, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :object, -> { Whop_sdk::Cards::Types::PostCardApplicationDeniedPayloadDataObject }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Cards::Types::PostCardApplicationDeniedPayloadDataStatus }, optional: false, nullable: false
      end
    end
  end
end
