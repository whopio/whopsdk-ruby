# frozen_string_literal: true

module Whop_sdk
  module Types
    class SuspensionAppealContext < Internal::Types::Model
      field :accounts, -> { Internal::Types::Array[Whop_sdk::Types::SuspensionAppealAccount] }, optional: false, nullable: false

      field :can_submit, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :declaration, -> { String }, optional: false, nullable: false

      field :form_subject, -> { Whop_sdk::Types::SuspensionAppealContextFormSubject }, optional: false, nullable: false

      field :receipts, -> { Internal::Types::Array[Whop_sdk::Types::SuspensionAppealPayment] }, optional: false, nullable: false

      field :subject, -> { Whop_sdk::Types::SuspensionAppealSubject }, optional: false, nullable: false
    end
  end
end
