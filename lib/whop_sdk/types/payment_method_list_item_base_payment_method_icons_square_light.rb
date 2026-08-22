# frozen_string_literal: true

module Whop_sdk
  module Types
    # The colorway for light surfaces.
    class PaymentMethodListItemBasePaymentMethodIconsSquareLight < Internal::Types::Model
      field :png1x, -> { String }, optional: false, nullable: false, api_name: "png_1x"

      field :png2x, -> { String }, optional: false, nullable: false, api_name: "png_2x"

      field :png4x, -> { String }, optional: false, nullable: false, api_name: "png_4x"

      field :svg, -> { String }, optional: false, nullable: false
    end
  end
end
