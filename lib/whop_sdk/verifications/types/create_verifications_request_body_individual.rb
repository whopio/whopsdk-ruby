# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # Request body for an individual (KYC) verification. Omit `kind` or set it to `individual`. KYC is required to pay
      # out funds and is a prerequisite for Whop Card access. Accepting payments does not require verification until a
      # business reaches $5000 in payments.
      #
      # Add `business_name` and `business_structure` if the individual operates under a business entity — this enables
      # payouts to be received by a business bank account. `country` is always the individual's own country, and the
      # supported `business_structure` values vary by it — see [Business
      # structures](/developer/verification/business-structures).
      class CreateVerificationsRequestBodyIndividual < Internal::Types::Model
        field :address, -> { Whop_sdk::Verifications::Types::CreateVerificationsRequestBodyIndividualAddress }, optional: true, nullable: false

        field :business_name, -> { String }, optional: true, nullable: false

        field :business_structure, -> { String }, optional: true, nullable: false

        field :business_tax_identification_number, -> { String }, optional: true, nullable: false

        field :business_website, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :date_of_birth, -> { String }, optional: true, nullable: false

        field :document_type, -> { Whop_sdk::Verifications::Types::CreateVerificationsRequestBodyIndividualDocumentType }, optional: true, nullable: false

        field :documents, -> { Whop_sdk::Verifications::Types::CreateVerificationsRequestBodyIndividualDocuments }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :share_token, -> { String }, optional: true, nullable: false

        field :tax_identification_number, -> { String }, optional: true, nullable: false
      end
    end
  end
end
