# frozen_string_literal: true

module Whop_sdk
  module Cards
    module Types
      class PostCardApplicationApprovedPayload < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_version, -> { Whop_sdk::Cards::Types::PostCardApplicationApprovedPayloadAPIVersion }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: false, nullable: true

        field :data, -> { Whop_sdk::Cards::Types::PostCardApplicationApprovedPayloadData }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :previous_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Cards::Types::PostCardApplicationApprovedPayloadType }, optional: false, nullable: false
      end
    end
  end
end
