# frozen_string_literal: true

module Whop_sdk
  module Types
    class InvoiceSend < Internal::Types::Model
      field :actor, -> { Whop_sdk::Types::UserSummary }, optional: false, nullable: true

      field :kind, -> { Whop_sdk::Types::InvoiceSendKind }, optional: false, nullable: false

      field :recipient_count, -> { Integer }, optional: false, nullable: false

      field :recipients, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :sent_at, -> { String }, optional: false, nullable: false
    end
  end
end
