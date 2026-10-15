# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # An owner to add, change, or remove. Send `id` to change an owner already on the verification: new `roles` or
      # `ownership_percentage`, or `document_type` and `documents` when the owner's documents are still needed. Send
      # `id` with `remove` set to `true` to remove that owner. Without `id`, the entry adds an owner as it does on
      # Create Verification. Owners left out are not changed.
      class UpdateVerificationsRequestBodyBusinessAddressOwnersItem < Internal::Types::Model
        field :address, -> { Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyBusinessAddressOwnersItemAddress }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :date_of_birth, -> { String }, optional: true, nullable: false

        field :document_type, -> { Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyBusinessAddressOwnersItemDocumentType }, optional: true, nullable: false

        field :documents, -> { Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyBusinessAddressOwnersItemDocuments }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :ownership_percentage, -> { Integer }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :remove, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :roles, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyBusinessAddressOwnersItemRolesItem] }, optional: true, nullable: false

        field :tax_identification_number, -> { String }, optional: true, nullable: false

        field :verification_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
