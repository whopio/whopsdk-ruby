# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentNextActionCollectCardPresent < Internal::Types::Model
      field :data, -> { Whop_sdk::Types::PaymentNextActionCollectCardPresentData }, optional: false, nullable: false
    end
  end
end
