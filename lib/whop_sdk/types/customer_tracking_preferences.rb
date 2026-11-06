# frozen_string_literal: true

module Whop_sdk
  module Types
    class CustomerTrackingPreferences < Internal::Types::Model
      field :accent_color, -> { String }, optional: false, nullable: false

      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :show_business_name, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :show_logo, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :support_email, -> { String }, optional: false, nullable: true

      field :support_url, -> { String }, optional: false, nullable: true
    end
  end
end
