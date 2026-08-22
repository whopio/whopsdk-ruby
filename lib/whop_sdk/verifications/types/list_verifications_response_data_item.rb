# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      class ListVerificationsResponseDataItem < Internal::Types::Model
        field :address, -> { Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemAddress }, optional: true, nullable: false

        field :business_name, -> { String }, optional: true, nullable: false

        field :business_structure, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :created_at, -> { String }, optional: true, nullable: false

        field :date_of_birth, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :kind, -> { Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemKind }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :requested_information, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemRequestedInformationItem] }, optional: true, nullable: false

        field :required_documents, -> { Internal::Types::Array[Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemRequiredDocumentsItem] }, optional: true, nullable: false

        field :session_url, -> { String }, optional: true, nullable: false

        field :status, -> { Whop_sdk::Verifications::Types::ListVerificationsResponseDataItemStatus }, optional: true, nullable: false

        field :updated_at, -> { String }, optional: true, nullable: false
      end
    end
  end
end
