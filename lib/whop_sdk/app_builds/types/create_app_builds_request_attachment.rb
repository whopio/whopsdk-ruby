# frozen_string_literal: true

module Whop_sdk
  module AppBuilds
    module Types
      # The uploaded build file: `{ id }` for an existing file or `{ direct_upload_id }` for a completed direct upload.
      class CreateAppBuildsRequestAttachment < Internal::Types::Model
        field :direct_upload_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
