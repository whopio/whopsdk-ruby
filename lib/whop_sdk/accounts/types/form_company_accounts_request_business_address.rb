# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      # Company mailing address. Required unless `use_registered_agent` is `true`.
      class FormCompanyAccountsRequestBusinessAddress < Internal::Types::Model
        field :city, -> { String }, optional: false, nullable: false

        field :country, -> { String }, optional: false, nullable: false

        field :line1, -> { String }, optional: false, nullable: false

        field :line2, -> { String }, optional: true, nullable: false

        field :postal_code, -> { String }, optional: false, nullable: false

        field :state, -> { String }, optional: false, nullable: false
      end
    end
  end
end
