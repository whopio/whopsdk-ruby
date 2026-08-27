# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Types
      class CreateAccountsRequest < Internal::Types::Model
        field :affiliate_code, -> { String }, optional: true, nullable: false

        field :blueprint_id, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
