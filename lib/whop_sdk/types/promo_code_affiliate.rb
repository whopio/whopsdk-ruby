# frozen_string_literal: true

module Whop_sdk
  module Types
    class PromoCodeAffiliate < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :user, -> { Whop_sdk::Types::PromoCodeAffiliateUser }, optional: false, nullable: false
    end
  end
end
