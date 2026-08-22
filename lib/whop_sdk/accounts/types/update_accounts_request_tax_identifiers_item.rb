# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class UpdateAccountsRequestTaxIdentifiersItem < Internal::Types::Model
        field :tax_id_type, -> { Whop_sdk::Accounts::Types::UpdateAccountsRequestTaxIdentifiersItemTaxIDType }, optional: false, nullable: false

        field :tax_id_value, -> { String }, optional: false, nullable: false
      end
    end
  end
end
