# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountFinancing < Internal::Types::Model
      field :application_id, -> { String }, optional: false, nullable: false

      field :status, -> { Whop_sdk::Types::AccountFinancingStatus }, optional: false, nullable: false
    end
  end
end
