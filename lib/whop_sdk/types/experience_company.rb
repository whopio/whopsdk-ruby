# frozen_string_literal: true

module Whop_sdk
  module Types
    # The company that owns this experience.
    class ExperienceCompany < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
