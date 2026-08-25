# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionBranding < Internal::Types::Model
      field :background_color, -> { String }, optional: false, nullable: true

      field :background_text_color, -> { String }, optional: false, nullable: true

      field :border_style, -> { Whop_sdk::Types::CheckoutSessionBrandingBorderStyle }, optional: false, nullable: true

      field :button_color, -> { String }, optional: false, nullable: true

      field :button_radius, -> { String }, optional: false, nullable: true

      field :button_text_color, -> { String }, optional: false, nullable: true

      field :container_radius, -> { String }, optional: false, nullable: true

      field :font_family, -> { Whop_sdk::Types::CheckoutSessionBrandingFontFamily }, optional: false, nullable: true

      field :font_url, -> { String }, optional: false, nullable: true

      field :input_radius, -> { String }, optional: false, nullable: true

      field :resolved_font_family, -> { String }, optional: false, nullable: true
    end
  end
end
