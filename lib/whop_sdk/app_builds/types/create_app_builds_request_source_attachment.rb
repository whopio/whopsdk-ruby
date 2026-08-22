# frozen_string_literal: true

module Whop_sdk
  module AppBuilds
    module Types
      # An optional compressed archive (.zip or .gz) of the source code that produced this build, stored alongside the
      # build so it can be downloaded later. Referenced like `attachment`, and must be a different file.
      class CreateAppBuildsRequestSourceAttachment < Internal::Types::Model
        field :direct_upload_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
