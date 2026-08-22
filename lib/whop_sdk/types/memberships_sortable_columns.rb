# frozen_string_literal: true

module Whop_sdk
  module Types
    module MembershipsSortableColumns
      extend Whop_sdk::Internal::Types::Enum

      ID = "id"
      CREATED_AT = "created_at"
      STATUS = "status"
      CANCELED_AT = "canceled_at"
      DATE_JOINED = "date_joined"
      TOTAL_SPEND = "total_spend"
    end
  end
end
