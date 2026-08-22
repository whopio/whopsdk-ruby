# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class ListRecipientsTransfersResponseDataItem < Internal::Types::Model
        extend Whop_sdk::Internal::Types::Union

        discriminant :object

        member -> { Whop_sdk::Transfers::Types::ListRecipientsTransfersResponseDataItemUser }, key: "USER"

        member -> { Whop_sdk::Transfers::Types::ListRecipientsTransfersResponseDataItemAccount }, key: "ACCOUNT"
      end
    end
  end
end
