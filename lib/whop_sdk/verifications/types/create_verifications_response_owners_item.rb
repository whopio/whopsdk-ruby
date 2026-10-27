# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class CreateVerificationsResponseOwnersItem < Internal::Types::Model
        field :date_of_birth, -> { String }, optional: false, nullable: true

        field :first_name, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :last_name, -> { String }, optional: false, nullable: true

        field :ownership_percentage, -> { Integer }, optional: false, nullable: true

        field :rejected_checks, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::CreateVerificationsResponseOwnersItemRejectedChecksItem] }, optional: false, nullable: false

        field :required_documents, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::CreateVerificationsResponseOwnersItemRequiredDocumentsItem] }, optional: false, nullable: false

        field :roles, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::CreateVerificationsResponseOwnersItemRolesItem] }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Verifications::Types::CreateVerificationsResponseOwnersItemStatus }, optional: false, nullable: false
      end
    end
  end
end
