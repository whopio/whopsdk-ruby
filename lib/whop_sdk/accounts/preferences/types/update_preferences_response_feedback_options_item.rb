# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class UpdatePreferencesResponseFeedbackOptionsItem < Internal::Types::Model
          field :category, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesResponseFeedbackOptionsItemCategory }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false

          field :label, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
