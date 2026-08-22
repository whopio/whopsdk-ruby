# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivityResourceAuthorizedAt < Internal::Types::Model
      field :authorized_at, -> { String }, optional: false, nullable: true

      field :card_id, -> { String }, optional: false, nullable: true

      field :cashback_usd, -> { String }, optional: false, nullable: true

      field :declined_reason, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :local_amount, -> { String }, optional: false, nullable: true

      field :local_currency, -> { String }, optional: false, nullable: true

      field :merchant_category, -> { String }, optional: false, nullable: true

      field :merchant_icon_url, -> { String }, optional: false, nullable: true

      field :merchant_name, -> { String }, optional: false, nullable: true

      field :object, -> { Whop_sdk::Types::LedgerActivityResourceAuthorizedAtObject }, optional: false, nullable: false

      field :posted_at, -> { String }, optional: false, nullable: true

      field :status, -> { String }, optional: false, nullable: true

      field :usd_amount, -> { String }, optional: false, nullable: true
    end
  end
end
