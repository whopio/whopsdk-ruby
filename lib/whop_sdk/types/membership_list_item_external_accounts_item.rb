# frozen_string_literal: true

module Whop_sdk
  module Types
    # A member's account on an outside platform, such as Discord or Telegram.
    class MembershipListItemExternalAccountsItem < Internal::Types::Model
      field :external_id, -> { String }, optional: false, nullable: false

      field :platform, -> { String }, optional: false, nullable: false

      field :username, -> { String }, optional: false, nullable: true
    end
  end
end
