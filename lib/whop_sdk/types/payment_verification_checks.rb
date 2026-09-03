# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentVerificationChecks < Internal::Types::Model
      field :address_line1, -> { String }, optional: false, nullable: true

      field :card_holder_name, -> { String }, optional: false, nullable: true

      field :card_security_code, -> { String }, optional: false, nullable: true

      field :zip_code, -> { String }, optional: false, nullable: true
    end
  end
end
