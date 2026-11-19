# frozen_string_literal: true

module Whop_sdk
  module Types
    class SuspensionAppealPayment < Internal::Types::Model
      field :account_name, -> { String }, optional: false, nullable: false

      field :customer_email, -> { String }, optional: false, nullable: false

      field :customer_name, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :paid_at, -> { String }, optional: false, nullable: false
    end
  end
end
