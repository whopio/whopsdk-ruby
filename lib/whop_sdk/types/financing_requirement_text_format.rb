# frozen_string_literal: true

module Whop_sdk
  module Types
    module FinancingRequirementTextFormat
      extend Whop_sdk::Internal::Types::Enum

      PLAIN = "plain"
      URL = "url"
      EMAIL = "email"
      PHONE = "phone"
      NUMBER = "number"
      CHECKBOX = "checkbox"
      DROPDOWN = "dropdown"
    end
  end
end
