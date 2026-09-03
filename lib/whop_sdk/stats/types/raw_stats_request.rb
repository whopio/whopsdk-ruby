# frozen_string_literal: true

module Whop_sdk
  module Stats
    module Types
      class RawStatsRequest < Internal::Types::Model
        field :resource, -> { String }, optional: false, nullable: false

        field :from, -> { String }, optional: true, nullable: false

        field :to, -> { String }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :cursor, -> { String }, optional: true, nullable: false

        field :sort, -> { String }, optional: true, nullable: false

        field :sort_direction, -> { Whop_sdk::Types::Direction }, optional: true, nullable: false

        field :user_id, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
