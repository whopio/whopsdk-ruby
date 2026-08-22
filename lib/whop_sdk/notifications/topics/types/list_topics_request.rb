# frozen_string_literal: true

module Whop_sdk
  module Notifications
    module Topics
      module Types
        class ListTopicsRequest < Internal::Types::Model
          field :topic_type, -> { Whop_sdk::Notifications::Topics::Types::ListTopicsRequestTopicType }, optional: true, nullable: false

          field :first, -> { Integer }, optional: true, nullable: false

          field :after, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
