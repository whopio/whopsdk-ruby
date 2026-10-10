# frozen_string_literal: true

module Whop_sdk
  module AppBuilds
    module Types
      # The uploaded build file: pass `id` for an existing file or `direct_upload_id` for a completed direct upload. iOS
      # and Android builds take a .zip bundle; web builds take a JavaScript file or a .zip archive of the hosted site.
      class CreateAppBuildsRequestAttachment < Internal::Types::Model
        field :direct_upload_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
