# frozen_string_literal: true

module Whop_sdk
  module AiChats
    module Types
      # Input for an attachment
      class CreateAiChatsRequestMessageAttachmentsItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
