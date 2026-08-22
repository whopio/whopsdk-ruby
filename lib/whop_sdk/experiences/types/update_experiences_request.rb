# frozen_string_literal: true

module Whop_sdk
  module Experiences
    module Types
      class UpdateExperiencesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :access_level, -> { Whop_sdk::Types::ExperienceAccessLevels }, optional: true, nullable: false

        field :is_public, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :logo, -> { Whop_sdk::Experiences::Types::UpdateExperiencesRequestLogo }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :notifications_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :order, -> { String }, optional: true, nullable: false

        field :section_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
