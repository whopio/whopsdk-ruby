# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      # A file upload containing evidence of customer communication. Must be a JPEG, PNG, GIF, or PDF.
      class UpdateEvidenceDisputeRequestCustomerCommunicationAttachment < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
