# frozen_string_literal: true

module Whop_sdk
  module Types
    class File < Internal::Types::Model
      field :content_type, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :filename, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :multipart_chunk_size, -> { Integer }, optional: true, nullable: false

      field :multipart_upload_id, -> { String }, optional: true, nullable: false

      field :multipart_upload_urls, -> { Internal::Types::Array[Whop_sdk::Types::FileMultipartURL] }, optional: true, nullable: false

      field :object, -> { String }, optional: false, nullable: false

      field :size, -> { Integer }, optional: false, nullable: true

      field :upload_headers, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :upload_status, -> { Whop_sdk::Types::FileUploadStatus }, optional: false, nullable: false

      field :upload_url, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: false, nullable: true

      field :visibility, -> { Whop_sdk::Types::FileVisibility }, optional: false, nullable: false
    end
  end
end
