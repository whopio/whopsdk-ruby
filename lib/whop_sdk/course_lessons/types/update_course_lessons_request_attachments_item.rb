# frozen_string_literal: true

module Whop_sdk
  module CourseLessons
    module Types
      # Input for an attachment
      class UpdateCourseLessonsRequestAttachmentsItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
