# frozen_string_literal: true

module Whop_sdk
  module Types
    class MessageReactionCount < Internal::Types::Model
      field :kind, -> { Whop_sdk::Types::MessageReactionCountKind }, optional: false, nullable: false

      field :own_reaction_id, -> { String }, optional: false, nullable: true

      field :total_score, -> { Integer }, optional: false, nullable: false

      field :user_count, -> { Integer }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: true
    end
  end
end
