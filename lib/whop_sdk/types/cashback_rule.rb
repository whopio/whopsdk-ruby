# frozen_string_literal: true

module Whop_sdk
  module Types
    class CashbackRule < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :discarded_at, -> { String }, optional: false, nullable: true

      field :expires_at, -> { String }, optional: false, nullable: true

      field :funding_account_id, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :merchant_category_code, -> { String }, optional: false, nullable: false

      field :merchant_name, -> { String }, optional: false, nullable: false

      field :rate_bps, -> { Integer }, optional: false, nullable: false

      field :scoped_account_id, -> { String }, optional: false, nullable: true

      field :starts_at, -> { String }, optional: false, nullable: false

      field :updated_at, -> { String }, optional: false, nullable: false
    end
  end
end
