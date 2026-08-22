# frozen_string_literal: true

module Whop_sdk
  module Files
    module Types
      # A file that has been uploaded or is pending upload.
      class CreateFilesResponse < Internal::Types::Model
        field :content_type, -> { String }, optional: false, nullable: true

        field :filename, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :size, -> { String }, optional: false, nullable: true

        field :upload_headers, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

        field :upload_status, -> { Whop_sdk::Types::UploadStatuses }, optional: false, nullable: false

        field :upload_url, -> { String }, optional: false, nullable: true

        field :url, -> { String }, optional: false, nullable: true

        field :visibility, -> { Whop_sdk::Types::FileVisibility }, optional: false, nullable: false
      end
    end
  end
end
