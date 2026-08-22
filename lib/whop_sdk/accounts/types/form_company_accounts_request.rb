# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class FormCompanyAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :business_address, -> { Whop_sdk::Accounts::Types::FormCompanyAccountsRequestBusinessAddress }, optional: true, nullable: false

        field :business_name, -> { String }, optional: false, nullable: false

        field :business_phone, -> { String }, optional: true, nullable: false

        field :business_type, -> { String }, optional: false, nullable: false

        field :business_website, -> { String }, optional: true, nullable: false

        field :entity_suffix, -> { Whop_sdk::Accounts::Types::FormCompanyAccountsRequestEntitySuffix }, optional: true, nullable: false

        field :entity_type, -> { Whop_sdk::Accounts::Types::FormCompanyAccountsRequestEntityType }, optional: true, nullable: false

        field :expedite_ein, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :formation_state, -> { Whop_sdk::Accounts::Types::FormCompanyAccountsRequestFormationState }, optional: false, nullable: false

        field :founders, -> { Internal::Types::Array[Whop_sdk::Accounts::Types::FormCompanyAccountsRequestFoundersItem] }, optional: false, nullable: false

        field :industry_group, -> { String }, optional: false, nullable: false

        field :industry_type, -> { String }, optional: false, nullable: false

        field :share_structure, -> { Whop_sdk::Accounts::Types::FormCompanyAccountsRequestShareStructure }, optional: true, nullable: false

        field :use_registered_agent, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
