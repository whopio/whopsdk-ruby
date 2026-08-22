# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class UpdateMessagesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :attachments, -> { Internal::Types::Array[Whop_sdk::Messages::Types::UpdateMessagesRequestAttachmentsItem] }, optional: true, nullable: false

        field :content, -> { String }, optional: true, nullable: false

        field :is_pinned, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
