# frozen_string_literal: true

module Whop_sdk
  module Types
    class ProductExperience < Internal::Types::Model
      field :app, -> { Whop_sdk::Types::ProductExperienceApp }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :logo_url, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
