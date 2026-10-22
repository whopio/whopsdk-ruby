# frozen_string_literal: true

module Whop_sdk
  module Types
    class AppSummary < Internal::Types::Model
      field :developer, -> { Whop_sdk::Types::AccountSummary }, optional: false, nullable: false

      field :icon, -> { Whop_sdk::Types::AppIcon }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
