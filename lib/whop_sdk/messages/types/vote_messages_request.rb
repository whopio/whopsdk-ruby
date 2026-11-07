# frozen_string_literal: true

module Whop_sdk
  module Messages
    module Types
      class VoteMessagesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :poll_option_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
