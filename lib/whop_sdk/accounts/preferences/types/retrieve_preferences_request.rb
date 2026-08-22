# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class RetrievePreferencesRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
