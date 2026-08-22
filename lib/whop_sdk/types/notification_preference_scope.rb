# frozen_string_literal: true

module Whop_sdk
  module Types
    class NotificationPreferenceScope < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: true

      field :channel, -> { Whop_sdk::Types::NotificationPreferenceScopeChannel }, optional: false, nullable: true

      field :experience_id, -> { String }, optional: false, nullable: true

      field :team_account_id, -> { String }, optional: false, nullable: true

      field :topic_id, -> { String }, optional: false, nullable: true
    end
  end
end
