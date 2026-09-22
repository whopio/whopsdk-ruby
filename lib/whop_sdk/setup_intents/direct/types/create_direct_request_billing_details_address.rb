# frozen_string_literal: true

module Whop_sdk
  module SetupIntents
    module Direct
      module Types
        # The billing address.
        class CreateDirectRequestBillingDetailsAddress < Internal::Types::Model
          field :city, -> { String }, optional: true, nullable: false

          field :country, -> { String }, optional: false, nullable: false

          field :line1, -> { String }, optional: true, nullable: false

          field :line2, -> { String }, optional: true, nullable: false

          field :postal_code, -> { String }, optional: false, nullable: false

          field :state, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
