# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      # Authorized share structure. Required when `entity_type` is `c_corp`; ignored for LLCs.
      class FormCompanyAccountsRequestShareStructure < Internal::Types::Model
        field :number_of_shares, -> { Integer }, optional: false, nullable: false

        field :value, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
