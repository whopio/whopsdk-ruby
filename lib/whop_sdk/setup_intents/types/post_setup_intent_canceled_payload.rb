# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      class PostSetupIntentCanceledPayload < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_version, -> { Whop_sdk::SetupIntents::Types::PostSetupIntentCanceledPayloadAPIVersion }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: false, nullable: true

        field :data, -> { Whop_sdk::Types::SetupIntent }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :previous_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::SetupIntents::Types::PostSetupIntentCanceledPayloadType }, optional: false, nullable: false
      end
    end
  end
end
