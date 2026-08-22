# frozen_string_literal: true

module Whop_sdk
  module Types
    # The thumbnail image displayed on course cards and previews. Null if no thumbnail has been uploaded.
    class CourseListItemThumbnail < Internal::Types::Model
      field :content_type, -> { String }, optional: false, nullable: true

      field :filename, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :optimized_url, -> { String }, optional: false, nullable: true

      field :source_url, -> { String }, optional: false, nullable: true
    end
  end
end
