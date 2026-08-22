# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      class UploadEvidenceDisputesRequestDocumentsItem < Internal::Types::Model
        field :direct_upload_id, -> { String }, optional: true, nullable: false

        field :document_type, -> { Whop_sdk::Disputes::Types::UploadEvidenceDisputesRequestDocumentsItemDocumentType }, optional: false, nullable: false

        field :file, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
