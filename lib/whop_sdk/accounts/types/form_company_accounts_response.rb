# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class FormCompanyAccountsResponse < Internal::Types::Model
        field :checkout_session_id, -> { String }, optional: false, nullable: false

        field :checkout_url, -> { String }, optional: false, nullable: false

        field :currency, -> { String }, optional: false, nullable: false

        field :total, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
