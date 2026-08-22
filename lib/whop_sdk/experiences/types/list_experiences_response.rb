# frozen_string_literal: true

module Whop_sdk
  module Experiences
    module Types
      # The connection type for PublicExperience.
      class ListExperiencesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::ExperienceListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
