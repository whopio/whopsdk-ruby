# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountCustomerTracking < Internal::Types::Model
      field :accent_color, -> { String }, optional: false, nullable: false

      field :business_name, -> { String }, optional: false, nullable: false

      field :button_text_color, -> { Whop_sdk::Types::AccountCustomerTrackingButtonTextColor }, optional: false, nullable: false

      field :logo_url, -> { String }, optional: false, nullable: true

      field :show_business_name, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :show_logo, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :support_email, -> { String }, optional: false, nullable: true

      field :support_url, -> { String }, optional: false, nullable: true
    end
  end
end
