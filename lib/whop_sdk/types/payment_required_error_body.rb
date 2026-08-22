# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentRequiredErrorBody < Internal::Types::Model
      field :error, -> { Whop_sdk::Types::PaymentRequiredErrorBodyError }, optional: false, nullable: false
    end
  end
end
