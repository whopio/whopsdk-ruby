# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountRequiredAction < Internal::Types::Model
      field :action, -> { Whop_sdk::Types::AccountRequiredActionAction }, optional: false, nullable: false

      field :blocked_capabilities, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :cta, -> { String }, optional: false, nullable: true

      field :cta_label, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: false

      field :icon_url, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AccountRequiredActionStatus }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
