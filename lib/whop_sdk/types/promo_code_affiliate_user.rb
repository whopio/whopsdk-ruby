# frozen_string_literal: true

module Whop_sdk
  module Types
    class PromoCodeAffiliateUser < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true

      field :profile_pic, -> { String }, optional: false, nullable: false

      field :username, -> { String }, optional: false, nullable: true
    end
  end
end
