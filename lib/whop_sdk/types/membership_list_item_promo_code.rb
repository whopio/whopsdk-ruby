# frozen_string_literal: true

module Whop_sdk
  module Types
    # The promotional code currently applied to this membership's billing. Null if no promo code is active.
    class MembershipListItemPromoCode < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
