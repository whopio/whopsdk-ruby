# frozen_string_literal: true

module Whop_sdk
  module Types
    # A messaging channel that can be a one-on-one DM, group chat, company support conversation, or platform-level
    # direct message.
    class SupportChannelListItem < Internal::Types::Model
      field :company_id, -> { String }, optional: false, nullable: true

      field :custom_name, -> { String }, optional: false, nullable: true

      field :customer_user, -> { Whop_sdk::Types::SupportChannelListItemCustomerUser }, optional: false, nullable: true

      field :id, -> { String }, optional: false, nullable: false

      field :last_message_at, -> { String }, optional: false, nullable: true

      field :resolved_at, -> { String }, optional: false, nullable: true
    end
  end
end
