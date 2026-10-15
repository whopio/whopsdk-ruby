# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class ListVerificationsResponseDataItemOwnersItem < Internal::Types::Model
        field :first_name, -> { String }, optional: false, nullable: true

        field :id, -> { String }, optional: false, nullable: false

        field :last_name, -> { String }, optional: false, nullable: true

        field :ownership_percentage, -> { Integer }, optional: false, nullable: true

        field :required_documents, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemOwnersItemRequiredDocumentsItem] }, optional: false, nullable: false

        field :roles, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemOwnersItemRolesItem] }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemOwnersItemStatus }, optional: false, nullable: false
      end
    end
  end
end
