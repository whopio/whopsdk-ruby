# frozen_string_literal: true

module Whop_sdk
  module Types
    class NotificationExperience < Internal::Types::Model
      field :app, -> { Whop_sdk::Types::NotificationExperienceApp }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true
    end
  end
end
