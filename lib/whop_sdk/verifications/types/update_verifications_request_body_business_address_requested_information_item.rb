# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class UpdateVerificationsRequestBodyBusinessAddressRequestedInformationItem < Internal::Types::Model
        field :address, -> { Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyBusinessAddressRequestedInformationItemAddress }, optional: true, nullable: false

        field :documents, -> { Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyBusinessAddressRequestedInformationItemDocuments }, optional: true, nullable: false

        field :files, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :value, -> { String }, optional: true, nullable: false

        field :value_type, -> { Whop_sdk::Verifications::Types::UpdateVerificationsRequestBodyBusinessAddressRequestedInformationItemValueType }, optional: true, nullable: false
      end
    end
  end
end
