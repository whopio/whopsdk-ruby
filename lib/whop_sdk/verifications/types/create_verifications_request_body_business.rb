# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # Request body for a business entity (KYB) verification. Set `kind` to `business`. KYB includes everything KYC
      # provides and additionally unlocks financing options for payments and business Whop Cards.
      class CreateVerificationsRequestBodyBusiness < Internal::Types::Model
        field :address, -> { Whop_sdk::Verifications::Types::CreateVerificationsRequestBodyBusinessAddress }, optional: true, nullable: false

        field :business_name, -> { String }, optional: true, nullable: false

        field :business_structure, -> { String }, optional: true, nullable: false

        field :business_tax_identification_number, -> { String }, optional: true, nullable: false

        field :business_website, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :date_of_birth, -> { String }, optional: true, nullable: false

        field :first_name, -> { String }, optional: true, nullable: false

        field :last_name, -> { String }, optional: true, nullable: false

        field :place_of_incorporation, -> { String }, optional: true, nullable: false

        field :share_token, -> { String }, optional: true, nullable: false

        field :tax_identification_number, -> { String }, optional: true, nullable: false
      end
    end
  end
end
