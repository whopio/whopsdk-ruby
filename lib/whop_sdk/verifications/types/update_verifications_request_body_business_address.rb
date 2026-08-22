# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # Fields that can be updated on a business entity (KYB) verification. At least one field is required.
      class UpdateVerificationsRequestBodyBusinessAddress < Internal::Types::Model
        field :business_address, -> { Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyBusinessAddressBusinessAddress }, optional: true, nullable: false

        field :business_name, -> { String }, optional: true, nullable: false

        field :business_structure, -> { String }, optional: true, nullable: false

        field :business_tax_identification_number, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :date_of_birth, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :requested_information, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyBusinessAddressRequestedInformationItem] }, optional: true, nullable: false

        field :tax_identification_number, -> { String }, optional: true, nullable: false
      end
    end
  end
end
