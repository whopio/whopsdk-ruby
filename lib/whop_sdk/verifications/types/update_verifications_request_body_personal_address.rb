# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # Fields that can be updated on an individual (KYC) verification. At least one field is required.
      class UpdateVerificationsRequestBodyPersonalAddress < Internal::Types::Model
        field :business_name, -> { String }, optional: true, nullable: false

        field :business_structure, -> { String }, optional: true, nullable: false

        field :business_tax_identification_number, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :date_of_birth, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :personal_address, -> { Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyPersonalAddressPersonalAddress }, optional: true, nullable: false

        field :requested_information, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyPersonalAddressRequestedInformationItem] }, optional: true, nullable: false

        field :tax_identification_number, -> { String }, optional: true, nullable: false
      end
    end
  end
end
