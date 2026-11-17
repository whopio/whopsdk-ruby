# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountLevel < Internal::Types::Model
      field :account_level, -> { Integer }, optional: false, nullable: false

      field :current, -> { Integer }, optional: false, nullable: false

      field :points, -> { Integer }, optional: false, nullable: false

      field :points_by_source, -> { Whop_sdk::Types::OwnerLevelPoints }, optional: false, nullable: false

      field :resets_at, -> { String }, optional: false, nullable: false
    end
  end
end
