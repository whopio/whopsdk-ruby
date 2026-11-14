# frozen_string_literal: true

module Whop_sdk
  module Invoices
    module Types
      module ListInvoicesRequestOrder
        extend Whop_sdk::Internal::Types::Enum

        CREATED_AT = "created_at"
        DUE_AT = "due_at"
        STATUS = "status"
        SCHEDULED_SEND_AT = "scheduled_send_at"
      end
    end
  end
end
