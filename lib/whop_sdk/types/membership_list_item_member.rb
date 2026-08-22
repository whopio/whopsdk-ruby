# frozen_string_literal: true

module Whop_sdk
  module Types
    # The member record linking the user to the company for this membership. Null if the member record has not been
    # created yet.
    class MembershipListItemMember < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
