# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentNextActionCollectCardPresentData < Internal::Types::Model
      field :client_secret, -> { String }, optional: false, nullable: false
    end
  end
end
