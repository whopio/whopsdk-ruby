# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module Preferences
      module Types
        class UpdatePreferencesRequestAffiliateProgramApplicationQuestionsItem < Internal::Types::Model
          field :field_type, -> { Whop_sdk::Accounts::Preferences::Types::UpdatePreferencesRequestAffiliateProgramApplicationQuestionsItemFieldType }, optional: true, nullable: false

          field :id, -> { String }, optional: true, nullable: false

          field :name, -> { String }, optional: true, nullable: false

          field :placeholder, -> { String }, optional: true, nullable: false

          field :required, -> { Internal::Types::Boolean }, optional: true, nullable: false
        end
      end
    end
  end
end
