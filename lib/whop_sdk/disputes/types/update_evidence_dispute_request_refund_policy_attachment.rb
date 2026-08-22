# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      # A file upload containing the company's refund policy document.
      class UpdateEvidenceDisputeRequestRefundPolicyAttachment < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
