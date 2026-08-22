# frozen_string_literal: true

module Whop_sdk
  module Types
    class DisputeEvidenceDocument < Internal::Types::Model
      field :content_type, -> { Whop_sdk::Types::DisputeEvidenceDocumentContentType }, optional: false, nullable: true

      field :document_type, -> { Whop_sdk::Types::DisputeEvidenceDocumentDocumentType }, optional: false, nullable: false

      field :filename, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
