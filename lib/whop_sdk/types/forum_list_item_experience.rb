# frozen_string_literal: true

module Whop_sdk
  module Types
    # The parent experience that this forum belongs to.
    class ForumListItemExperience < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :is_public, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
