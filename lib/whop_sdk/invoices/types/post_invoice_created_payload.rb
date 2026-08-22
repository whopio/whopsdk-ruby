# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class PostInvoiceCreatedPayload < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :api_version, -> { Whop_sdk::Invoices::Types::PostInvoiceCreatedPayloadAPIVersion }, optional: false, nullable: false

        field :api_version_date, -> { String }, optional: false, nullable: true

        field :data, -> { Whop_sdk::Types::Invoice }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :previous_attributes, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :timestamp, -> { String }, optional: false, nullable: false

        field :type, -> { Whop_sdk::Invoices::Types::PostInvoiceCreatedPayloadType }, optional: false, nullable: false
      end
    end
  end
end
