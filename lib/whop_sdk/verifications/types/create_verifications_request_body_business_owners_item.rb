# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # An owner of the business. Send `verification_id` to add someone with an approved verification on this account or
      # on a member of its team, or a new owner's details and documents to verify them from this request. An owner
      # already on the verification is not added twice, so a retried request is safe.
      class CreateVerificationsRequestBodyBusinessOwnersItem < Internal::Types::Model
        field :address, -> { Whop_sdk::Verifications::Types::CreateVerificationsRequestBodyBusinessOwnersItemAddress }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :date_of_birth, -> { String }, optional: true, nullable: false

        field :document_type, -> { Whop_sdk::Verifications::Types::CreateVerificationsRequestBodyBusinessOwnersItemDocumentType }, optional: true, nullable: false

        field :documents, -> { Whop_sdk::Verifications::Types::CreateVerificationsRequestBodyBusinessOwnersItemDocuments }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :ownership_percentage, -> { Integer }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :roles, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::CreateVerificationsRequestBodyBusinessOwnersItemRolesItem] }, optional: true, nullable: false

        field :tax_identification_number, -> { String }, optional: true, nullable: false

        field :verification_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
