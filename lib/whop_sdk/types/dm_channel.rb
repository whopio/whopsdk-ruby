# frozen_string_literal: true

module Whop_sdk
  module Types
    # A messaging channel that can be a one-on-one DM, group chat, company support conversation, or platform-level
    # direct message.
    class DmChannel < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :last_message_at, -> { String }, optional: false, nullable: true

      field :name, -> { String }, optional: false, nullable: true
    end
  end
end
