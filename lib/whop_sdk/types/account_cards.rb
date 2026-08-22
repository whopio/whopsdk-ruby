# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountCards < Internal::Types::Model
      field :kind, -> { Whop_sdk::Types::AccountCardsKind }, optional: false, nullable: true

      field :status, -> { Whop_sdk::Types::AccountCardsStatus }, optional: false, nullable: false
    end
  end
end
