# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class PostIdentityProfileUpdatedPayload < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_version, -> { Whop_sdk::Verifications::Types::PostIdentityProfileUpdatedPayloadAPIVersion }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: false, nullable: true

        field :data, -> { Whop_sdk::Verifications::Types::PostIdentityProfileUpdatedPayloadData }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :previous_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Verifications::Types::PostIdentityProfileUpdatedPayloadType }, optional: false, nullable: false
      end
    end
  end
end
