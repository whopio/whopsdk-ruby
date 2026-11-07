# frozen_string_literal: true

module Whop_sdk
  module Types
    class ChatReaction < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :emoji, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: false
    end
  end
end
