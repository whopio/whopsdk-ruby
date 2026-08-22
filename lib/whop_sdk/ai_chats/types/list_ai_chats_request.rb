# frozen_string_literal: true

module Whop_sdk
  module AiChats
    module Types
      class ListAiChatsRequest < Internal::Types::Model
        field :after, -> { String }, optional: true, nullable: false

        field :before, -> { String }, optional: true, nullable: false

        field :first, -> { Integer }, optional: true, nullable: false

        field :last, -> { Integer }, optional: true, nullable: false

        field :only_active_crons, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
