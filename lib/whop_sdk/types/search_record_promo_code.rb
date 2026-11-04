# frozen_string_literal: true

module Whop_sdk
  module Types
    class SearchRecordPromoCode < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false

      field :amount_off, -> { Integer }, optional: false, nullable: false

      field :currency, -> { Whop_sdk::Types::SearchRecordPromoCodeCurrency }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :image_url, -> { String }, optional: false, nullable: true

      field :promo_duration_months, -> { Integer }, optional: false, nullable: false

      field :promo_type, -> { Whop_sdk::Types::SearchRecordPromoCodePromoType }, optional: false, nullable: false

      field :subtitle, -> { String }, optional: false, nullable: true

      field :title, -> { String }, optional: false, nullable: true
    end
  end
end
