# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # Answer for an `id_document` item: the same slot keys Create Verification takes, so the key names both the
      # document and the side. Send every slot for the ID you are uploading — `PASSPORT` is `passport_front`; `ID_CARD`,
      # `DRIVERS` and `RESIDENCE_PERMIT` take a front and a back. Each value is a direct upload ID, or a
      # `file_`-prefixed attachment ID to reuse an uploaded document.
      class UpdateVerificationsRequestBodyBusinessAddressRequestedInformationItemDocuments < Internal::Types::Model
        field :drivers_back, -> { String }, optional: true, nullable: false

        field :drivers_front, -> { String }, optional: true, nullable: false

        field :id_card_back, -> { String }, optional: true, nullable: false

        field :id_card_front, -> { String }, optional: true, nullable: false

        field :passport_front, -> { String }, optional: true, nullable: false

        field :residence_permit_back, -> { String }, optional: true, nullable: false

        field :residence_permit_front, -> { String }, optional: true, nullable: false
      end
    end
  end
end
