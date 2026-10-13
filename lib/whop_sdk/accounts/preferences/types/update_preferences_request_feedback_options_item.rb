# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class UpdatePreferencesRequestFeedbackOptionsItem < Internal::Types::Model
          field :category, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestFeedbackOptionsItemCategory }, optional: false, nullable: false

          field :id, -> { String }, optional: true, nullable: false

          field :label, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
