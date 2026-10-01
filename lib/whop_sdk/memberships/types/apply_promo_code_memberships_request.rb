# frozen_string_literal: true

module Whop_sdk
  module Memberships
    module Types
      class ApplyPromoCodeMembershipsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :promo_code, -> { String }, optional: false, nullable: false
      end
    end
  end
end
