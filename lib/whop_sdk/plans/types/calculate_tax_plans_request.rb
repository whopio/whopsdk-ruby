# frozen_string_literal: true

module Whop_sdk
  module Plans
    module Types
      class CalculateTaxPlansRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :address, -> { Whop_sdk::Plans::Types::CalculateTaxPlansRequestAddress }, optional: true, nullable: false

        field :ip_address, -> { String }, optional: true, nullable: false

        field :tax_ids, -> { Internal::Types::Array[Whop_sdk::Plans::Types::CalculateTaxPlansRequestTaxIDsItem] }, optional: true, nullable: false
      end
    end
  end
end
