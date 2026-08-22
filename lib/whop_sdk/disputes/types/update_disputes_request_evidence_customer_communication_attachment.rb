# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      # Correspondence with the customer, or proof they used the product.
      class UpdateDisputesRequestEvidenceCustomerCommunicationAttachment < Internal::Types::Model
        field :direct_upload_id, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
