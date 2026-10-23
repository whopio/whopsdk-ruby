# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      class ListInvoicesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::Invoice] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Invoices::Types::ListInvoicesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
