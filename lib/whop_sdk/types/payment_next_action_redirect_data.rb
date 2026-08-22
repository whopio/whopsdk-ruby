# frozen_string_literal: true

module Whop_sdk
  module Types
    class PaymentNextActionRedirectData < Internal::Types::Model
      field :frame_max_width, -> { Integer }, optional: false, nullable: true

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
