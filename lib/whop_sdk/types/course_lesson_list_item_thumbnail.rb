# frozen_string_literal: true

module Whop_sdk
  module Types
    # The thumbnail image displayed on lesson cards and previews. Null if no thumbnail has been uploaded.
    class CourseLessonListItemThumbnail < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
