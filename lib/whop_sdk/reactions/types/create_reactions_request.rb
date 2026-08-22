# frozen_string_literal: true

module Whop_sdk
  module Reactions
    module Types
      class CreateReactionsRequest < Internal::Types::Model
        field :emoji, -> { String }, optional: true, nullable: false

        field :poll_option_id, -> { String }, optional: true, nullable: false

        field :resource_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
