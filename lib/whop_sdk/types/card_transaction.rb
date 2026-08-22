# frozen_string_literal: true

module Whop_sdk
  module Types
    class CardTransaction < Internal::Types::Model
      field :card_id, -> { String }, optional: false, nullable: false

      field :cardholder_id, -> { String }, optional: false, nullable: true

      field :cashback_usd_amount, -> { Integer }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: true

      field :declined_reason, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :international, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :local_amount, -> { Integer }, optional: false, nullable: true

      field :merchant_category, -> { String }, optional: false, nullable: true

      field :merchant_category_code, -> { String }, optional: false, nullable: true

      field :merchant_icon_url, -> { String }, optional: false, nullable: true

      field :merchant_name, -> { String }, optional: false, nullable: true

      field :posted_at, -> { String }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::CardTransactionStatus }, optional: false, nullable: false

      field :transaction_type, -> { Whop_sdk::Types::CardTransactionTransactionType }, optional: false, nullable: false

      field :usd_amount, -> { Integer }, optional: false, nullable: true
    end
  end
end
