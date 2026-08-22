# frozen_string_literal: true

module Whop_sdk
  module Types
    # The product this payment was made for
    class PaymentListItemProduct < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true

      field :route, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
