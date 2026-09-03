# frozen_string_literal: true

module Whop_sdk
  module PaymentMethods
    module Types
      class DeletePaymentMethodRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :member_id, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
