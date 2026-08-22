# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class FormCompanyAccountsRequestFoundersItem < Internal::Types::Model
        field :address, -> { Whop_sdk::Accounts::Types::FormCompanyAccountsRequestFoundersItemAddress }, optional: false, nullable: false

        field :date_of_birth, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: false, nullable: false

        field :first_name, -> { String }, optional: false, nullable: false

        field :is_primary, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :last_name, -> { String }, optional: false, nullable: false

        field :ownership_percentage, -> { Integer }, optional: true, nullable: false

        field :phone, -> { String }, optional: false, nullable: false

        field :roles, -> { Internal::Types::Array[Whop_sdk::Accounts::Types::FormCompanyAccountsRequestFoundersItemRolesItem] }, optional: true, nullable: false

        field :ssn, -> { String }, optional: true, nullable: false
      end
    end
  end
end
