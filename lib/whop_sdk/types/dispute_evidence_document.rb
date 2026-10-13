# frozen_string_literal: true

module Whop_sdk
  module Types
    class DisputeEvidenceDocument < Internal::Types::Model
      field :blurhash, -> { String }, optional: false, nullable: true

      field :content_type, -> { Whop_sdk::Types::DisputeEvidenceDocumentContentType }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :document_type, -> { Whop_sdk::Types::DisputeEvidenceDocumentDocumentType }, optional: false, nullable: false

      field :duration_seconds, -> { Integer }, optional: false, nullable: true

      field :filename, -> { String }, optional: false, nullable: true

      field :height, -> { Integer }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :multipart_chunk_size, -> { Integer }, optional: true, nullable: false

      field :multipart_upload_id, -> { String }, optional: true, nullable: false

      field :multipart_upload_urls, -> { Internal::Types::Array[Whop_sdk::Types::FileMultipartURL] }, optional: true, nullable: false

      field :object, -> { String }, optional: false, nullable: false

      field :removed_by_moderation, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :size, -> { Integer }, optional: false, nullable: true

      field :upload_headers, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :upload_status, -> { Whop_sdk::Types::DisputeEvidenceDocumentUploadStatus }, optional: false, nullable: false

      field :upload_url, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: false, nullable: true

      field :visibility, -> { Whop_sdk::Types::DisputeEvidenceDocumentVisibility }, optional: false, nullable: false

      field :waveform_url, -> { String }, optional: false, nullable: true

      field :width, -> { Integer }, optional: false, nullable: true
    end
  end
end
