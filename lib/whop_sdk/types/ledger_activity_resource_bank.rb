# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivityResourceBank < Internal::Types::Model
      field :bank, -> { Whop_sdk::Types::LedgerActivityResourceBankBank }, optional: false, nullable: true

      field :card, -> { Whop_sdk::Types::LedgerActivityResourceBankCard }, optional: false, nullable: true

      field :email_identifier, -> { String }, optional: false, nullable: true

      field :gateway_type, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :object, -> { Whop_sdk::Types::LedgerActivityResourceBankObject }, optional: false, nullable: false

      field :payment_method_type, -> { String }, optional: false, nullable: true
    end
  end
end
