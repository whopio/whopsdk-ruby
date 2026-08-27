# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivity < Internal::Types::Model
      field :account, -> { Whop_sdk::Types::LedgerActivityAccount }, optional: true, nullable: false

      field :amount, -> { String }, optional: false, nullable: false

      field :available_at, -> { String }, optional: false, nullable: true

      field :currency, -> { Whop_sdk::Types::LedgerActivityCurrency }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :ledger_account_id, -> { String }, optional: true, nullable: false

      field :line_type, -> { Whop_sdk::Types::LedgerActivityLineType }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::LedgerActivityObject }, optional: false, nullable: false

      field :payment, -> { Whop_sdk::Types::LedgerActivityPayment }, optional: true, nullable: false

      field :payment_id, -> { String }, optional: true, nullable: false

      field :plan_id, -> { String }, optional: true, nullable: false

      field :plan_name, -> { String }, optional: true, nullable: false

      field :posted_at, -> { String }, optional: false, nullable: false

      field :product_id, -> { String }, optional: true, nullable: false

      field :product_name, -> { String }, optional: true, nullable: false

      field :resource, -> { Whop_sdk::Types::LedgerActivityResource }, optional: false, nullable: true

      field :source, -> { Whop_sdk::Types::LedgerActivitySource }, optional: false, nullable: true

      field :user_email, -> { String }, optional: true, nullable: false

      field :user_id, -> { String }, optional: true, nullable: false

      field :user_name, -> { String }, optional: true, nullable: false
    end
  end
end
