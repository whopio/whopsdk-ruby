# frozen_string_literal: true

module Whop_sdk
  module Transfers
    module Types
      class ListRecipientsTransfersResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Transfers::Types::ListRecipientsTransfersResponseDataItem] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::Transfers::Types::ListRecipientsTransfersResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
