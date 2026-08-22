# frozen_string_literal: true

module Whop_sdk
  module Types
    # The app that powers this experience, defining its interface and behavior.
    class ExperienceApp < Internal::Types::Model
      field :icon, -> { Whop_sdk::Types::ExperienceAppIcon }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
