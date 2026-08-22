# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      module Types
        # Referred account.
        class RetrieveBusinessesResponseAccount < Internal::Types::Model
          field :capabilities, -> { Whop_sdk::Types::AccountCapabilities }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false

          field :logo_url, -> { String }, optional: false, nullable: true

          field :recommended_actions, -> { Internal::Types::Array[Whop_sdk::Types::AccountRecommendedAction] }, optional: false, nullable: true

          field :required_actions, -> { Internal::Types::Array[Whop_sdk::Types::AccountRequiredAction] }, optional: false, nullable: true

          field :route, -> { String }, optional: false, nullable: false

          field :title, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
