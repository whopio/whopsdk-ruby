# frozen_string_literal: true

module Whop_sdk
  module Variants
    module Types
      class CalculateTaxVariantsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :address, -> { Whop_sdk::Variants::Types::CalculateTaxVariantsRequestAddress }, optional: true, nullable: false

        field :ip_address, -> { String }, optional: true, nullable: false

        field :tax_ids, -> { Internal::Types::Array[Whop_sdk::Variants::Types::CalculateTaxVariantsRequestTaxIDsItem] }, optional: true, nullable: false
      end
    end
  end
end
