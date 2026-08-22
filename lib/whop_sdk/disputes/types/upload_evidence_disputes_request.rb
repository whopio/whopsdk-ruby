# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      class UploadEvidenceDisputesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :documents, -> { Internal::Types::Array[Whop_sdk::Disputes::Types::UploadEvidenceDisputesRequestDocumentsItem] }, optional: false, nullable: false
      end
    end
  end
end
