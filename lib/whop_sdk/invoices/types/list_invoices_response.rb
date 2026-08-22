# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      # The connection type for PublicInvoice.
      class ListInvoicesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::InvoiceListItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Types::PageInfo }, optional: false, nullable: false
      end
    end
  end
end
