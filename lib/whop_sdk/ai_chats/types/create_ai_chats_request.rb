# frozen_string_literal: true

module Whop_sdk
  module AiChats
    module Types
      class CreateAiChatsRequest < Internal::Types::Model
        field :current_company_id, -> { String }, optional: true, nullable: false

        field :message_attachments, -> { Internal::Types::Array[Whop_sdk::AiChats::Types::CreateAiChatsRequestMessageAttachmentsItem] }, optional: true, nullable: false

        field :message_source, -> { Whop_sdk::Types::AiChatMessageSourceTypes }, optional: true, nullable: false

        field :message_text, -> { String }, optional: false, nullable: false

        field :suggestion_type, -> { String }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false
      end
    end
  end
end
