# frozen_string_literal: true

module Whop_sdk
  module Types
    class Money < Internal::Types::Model
      field :amount, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :decimals, -> { Integer }, optional: false, nullable: false

      field :display_decimals, -> { Integer }, optional: false, nullable: false
    end
  end
end
