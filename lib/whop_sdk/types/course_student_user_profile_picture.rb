# frozen_string_literal: true

module Whop_sdk
  module Types
    # The user's profile picture attachment with URL, content type, and file metadata. Null if using a legacy profile
    # picture.
    class CourseStudentUserProfilePicture < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
