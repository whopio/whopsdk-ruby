# frozen_string_literal: true

module Whop_sdk
  module Users
    module Preferences
      module Notifications
        module Types
          # What the preference applies to. `null` on a dimension means the preference is not narrowed there. A scope
          # read back from either list endpoint can be sent as-is. A scope naming an experience with no topic sets that
          # experience's level; any other scope sets a topic override.
          class SetNotificationsRequestPreferencesItemScope < Internal::Types::Model
            field :account_id, -> { String }, optional: true, nullable: false

            field :channel, -> { Whop_sdk::Users::Preferences::Notifications::Types::SetNotificationsRequestPreferencesItemScopeChannel }, optional: true, nullable: false

            field :experience_id, -> { String }, optional: true, nullable: false

            field :team_account_id, -> { String }, optional: true, nullable: false

            field :topic_id, -> { String }, optional: true, nullable: false
          end
        end
      end
    end
  end
end
