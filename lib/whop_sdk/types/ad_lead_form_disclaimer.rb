# frozen_string_literal: true

module Whop_sdk
  module Types
    class AdLeadFormDisclaimer < Internal::Types::Model
      field :body, -> { String }, optional: false, nullable: true

      field :checkboxes, -> { Internal::Types::Array[Whop_sdk::Types::AdLeadFormDisclaimerCheckbox] }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: true
    end
  end
end
