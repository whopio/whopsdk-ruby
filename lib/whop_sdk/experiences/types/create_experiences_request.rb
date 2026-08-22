# frozen_string_literal: true

module Whop_sdk
  module Experiences
    module Types
      class CreateExperiencesRequest < Internal::Types::Model
        field :app_id, -> { String }, optional: false, nullable: false

        field :company_id, -> { String }, optional: false, nullable: false

        field :is_public, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :logo, -> { Whop_sdk::Experiences::Types::CreateExperiencesRequestLogo }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :notifications_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :section_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
