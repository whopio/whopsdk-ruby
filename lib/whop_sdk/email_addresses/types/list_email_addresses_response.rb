# frozen_string_literal: true

module Whop_sdk
  module EmailAddresses
    module Types
      class ListEmailAddressesResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Whop_sdk::Types::EmailAddress] }, optional: false, nullable: false

        field :page_info, -> { Whop_sdk::EmailAddresses::Types::ListEmailAddressesResponsePageInfo }, optional: false, nullable: false
      end
    end
  end
end
