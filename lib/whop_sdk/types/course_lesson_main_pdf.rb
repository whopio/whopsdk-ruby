# frozen_string_literal: true

module Whop_sdk
  module Types
    # The primary PDF document for PDF-type lessons. Null if this lesson is not a PDF lesson or no PDF has been
    # uploaded.
    class CourseLessonMainPdf < Internal::Types::Model
      field :content_type, -> { String }, optional: false, nullable: true

      field :filename, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
