# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountTaxIdentifier < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :tax_id_type, -> { Whop_sdk::Types::AccountTaxIdentifierTaxIDType }, optional: false, nullable: false

      field :tax_id_value, -> { String }, optional: false, nullable: false
    end
  end
end
