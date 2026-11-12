# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Sends
      module Types
        class ListSendsResponse < Internal::Types::Model
          field :data, -> { Internal::Types::Array[Whop_sdk::Types::InvoiceSend] }, optional: false, nullable: false

          field :page_info, -> { Whop_sdk::Invoices::Sends::Types::ListSendsResponsePageInfo }, optional: false, nullable: false
        end
      end
    end
  end
end
