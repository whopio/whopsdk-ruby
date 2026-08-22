# frozen_string_literal: true

module Whop_sdk
  module Experiences
    module Types
      # A logo image displayed alongside the experience name.
      class UpdateExperiencesRequestLogo < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
