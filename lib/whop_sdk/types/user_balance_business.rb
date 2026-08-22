# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserBalanceBusiness < Internal::Types::Model
      field :balance_usd, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :logo_url, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true
    end
  end
end
