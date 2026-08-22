# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Types
      # The company that initiated this setup intent. Null if the company has been deleted.
      class CreateSetupIntentsResponseCompany < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
