# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # Identity document on file for the person. Individual verifications only. `null` until the person sends a
      # document.
      class UpdateVerificationsResponseIdentityDocument < Internal::Types::Model
        field :country, -> { String }, optional: false, nullable: true

        field :status, -> { Whop_sdk::Verifications::Types::UpdateVerificationsResponseIdentityDocumentStatus }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Verifications::Types::UpdateVerificationsResponseIdentityDocumentType }, optional: false, nullable: false
      end
    end
  end
end
