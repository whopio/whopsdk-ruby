# frozen_string_literal: true

module Whop_sdk
  module Types
    class ResolutionPayment < Internal::Types::Model
      field :card_brand, -> { String }, optional: false, nullable: true

      field :card_last4, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :payment_method_type, -> { String }, optional: false, nullable: true
    end
  end
end
