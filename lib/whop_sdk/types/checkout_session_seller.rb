# frozen_string_literal: true

module Whop_sdk
  module Types
    class CheckoutSessionSeller < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :logo_url, -> { String }, optional: false, nullable: true

      field :redirect_purchase_url, -> { String }, optional: false, nullable: true

      field :route, -> { String }, optional: false, nullable: false

      field :terms, -> { Whop_sdk::Types::CheckoutSessionSellerTerms }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false
    end
  end
end
