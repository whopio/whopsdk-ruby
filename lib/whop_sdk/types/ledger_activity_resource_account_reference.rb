# frozen_string_literal: true

module Whop_sdk
  module Types
    class LedgerActivityResourceAccountReference < Internal::Types::Model
      field :account_reference, -> { String }, optional: false, nullable: true

      field :destination_currency_code, -> { String }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :institution_name, -> { String }, optional: false, nullable: true

      field :nickname, -> { String }, optional: false, nullable: true

      field :object, -> { Whop_sdk::Types::LedgerActivityResourceAccountReferenceObject }, optional: false, nullable: false

      field :provider, -> { String }, optional: false, nullable: true
    end
  end
end
