# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      # Founder's personal address.
      class FormCompanyAccountsRequestFoundersItemAddress < Internal::Types::Model
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
