# frozen_string_literal: true

module Whop_sdk
  module Types
    module Visibility
      extend Whop_sdk::Internal::Types::Enum

      VISIBLE = "visible"
      HIDDEN = "hidden"
      ARCHIVED = "archived"
      QUICK_LINK = "quick_link"
    end
  end
end
