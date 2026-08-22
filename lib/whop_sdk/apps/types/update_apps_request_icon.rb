# frozen_string_literal: true

module Whop_sdk
  module Apps
    module Types
      # The icon image for the app in PNG, JPEG, or GIF format, referencing an uploaded file: `{ id }` for an existing
      # attachment or `{ direct_upload_id }` for a new direct upload.
      class UpdateAppsRequestIcon < Internal::Types::Model
        field :direct_upload_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
