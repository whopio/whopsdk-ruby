# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Notifications
        module Topics
          module Types
            class ListTopicsRequest < Internal::Types::Model
              field :channel, -> { Whop_sdk::Users::Preferences::Notifications::Topics::Types::ListTopicsRequestChannel }, optional: true, nullable: false

              field :account_id, -> { String }, optional: true, nullable: false

              field :team_account_id, -> { String }, optional: true, nullable: false

              field :experience_id, -> { String }, optional: true, nullable: false

              field :topic_id, -> { String }, optional: true, nullable: false

              field :first, -> { Integer }, optional: true, nullable: false

              field :after, -> { String }, optional: true, nullable: false
            end
          end
        end
      end
    end
  end
end
