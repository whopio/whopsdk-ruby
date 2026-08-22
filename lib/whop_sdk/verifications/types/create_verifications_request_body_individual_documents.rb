# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # Identity document files, each value the file's raw bytes base64-encoded (JPEG, PNG, or PDF, up to 5MB per file
      # before encoding). Sending this object verifies the person from the files in this request instead of a hosted
      # session — individual verifications only, and the request must also carry `document_type`, `first_name`,
      # `last_name`, `date_of_birth`, `country`, `phone`, `tax_identification_number`, and an `address` with `line1`,
      # `city`, `state`, and `postal_code`. Send every slot for your `document_type` — a missing or rejected file fails
      # the whole request and nothing is submitted; review starts automatically once every document is accepted. See
      # [Identity documents](/developer/verification/identity-documents) for a full walkthrough.
      class CreateVerificationsRequestBodyIndividualDocuments < Internal::Types::Model
        field :drivers_back, -> { String }, optional: true, nullable: false

        field :drivers_front, -> { String }, optional: true, nullable: false

        field :id_card_back, -> { String }, optional: true, nullable: false

        field :id_card_front, -> { String }, optional: true, nullable: false

        field :passport_front, -> { String }, optional: true, nullable: false

        field :residence_permit_back, -> { String }, optional: true, nullable: false

        field :residence_permit_front, -> { String }, optional: true, nullable: false

        field :selfie, -> { String }, optional: true, nullable: false
      end
    end
  end
end
