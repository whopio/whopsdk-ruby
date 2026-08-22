# frozen_string_literal: true

module Whop_sdk
  module Types
    module VisibilityFilter
      extend Whop_sdk::Internal::Types::Enum

      VISIBLE = "visible"
      HIDDEN = "hidden"
      ARCHIVED = "archived"
      QUICK_LINK = "quick_link"
      ALL = "all"
      NOT_QUICK_LINK = "not_quick_link"
      NOT_ARCHIVED = "not_archived"
    end
  end
end
