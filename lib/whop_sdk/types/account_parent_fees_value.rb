# frozen_string_literal: true

module Whop_sdk
  module Types
    class AccountParentFeesValue < Internal::Types::Model
      field :fixed_fee_usd, -> { Integer }, optional: false, nullable: false

      field :percentage_fee, -> { Integer }, optional: false, nullable: false
    end
  end
end
