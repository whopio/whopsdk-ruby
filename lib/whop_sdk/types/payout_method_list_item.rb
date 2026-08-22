# frozen_string_literal: true

module Whop_sdk
  module Types
    # A configured payout destination where a user receives earned funds, such as a bank account or digital wallet.
    class PayoutMethodListItem < Internal::Types::Model
      field :account_reference, -> { String }, optional: false, nullable: true

      field :company, -> { Whop_sdk::Types::PayoutMethodListItemCompany }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :destination, -> { Whop_sdk::Types::PayoutMethodListItemDestination }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :institution_name, -> { String }, optional: false, nullable: true

      field :is_default, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :nickname, -> { String }, optional: false, nullable: true
    end
  end
end
