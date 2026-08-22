# frozen_string_literal: true

module Whop_sdk
  module Reactions
    module Types
      class PostChatReactionCreatedPayload < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_version, -> { Whop_sdk::Reactions::Types::PostChatReactionCreatedPayloadAPIVersion }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: false, nullable: true

        field :data, -> { Whop_sdk::Reactions::Types::PostChatReactionCreatedPayloadData }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :previous_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Reactions::Types::PostChatReactionCreatedPayloadType }, optional: false, nullable: false
      end
    end
  end
end
