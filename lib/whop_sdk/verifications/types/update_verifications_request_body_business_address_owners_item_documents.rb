# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # The owner's identity document and selfie, each the ID of a ready file uploaded with Create File and not yet
      # attached to anything else, prefixed `file_`. Send every slot for `document_type` plus `selfie`. Document files
      # can be a PDF, JPEG, or PNG and the selfie a JPEG or PNG, each up to 10MB. They're sent to the verification
      # provider in the background: the owner reads `processing` until then, and `action_required`, with a
      # `rejection_reason` on each document, if a file couldn't be used.
      class UpdateVerificationsRequestBodyBusinessAddressOwnersItemDocuments < Internal::Types::Model
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
