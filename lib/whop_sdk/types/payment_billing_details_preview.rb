# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentBillingDetailsPreview < Internal::Types::Model
      field :country, -> { String }, optional: false, nullable: true

      field :email, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true

      field :postal_code, -> { String }, optional: false, nullable: true
    end
  end
end
