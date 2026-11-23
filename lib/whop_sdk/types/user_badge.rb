# frozen_string_literal: true

module Whop_sdk
  module Types
    class UserBadge < Internal::Types::Model
      field :type, -> { Whop_sdk::Types::UserBadgeType }, optional: false, nullable: false
    end
  end
end
