# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentRequiredErrorBodyError < Internal::Types::Model
      field :deposit_url, -> { String }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false

      field :type, -> { Whop_sdk::Types::PaymentRequiredErrorBodyErrorType }, optional: false, nullable: false
    end
  end
end
