# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        # The payout address to keep on file for this payout method. Only the fields you send are changed; blank fields
        # are ignored.
        class UpdateMethodsRequestAddress < Internal::Types::Model
          field :city, -> { String }, optional: true, nullable: false

          field :line1, -> { String }, optional: true, nullable: false

          field :line2, -> { String }, optional: true, nullable: false

          field :postal_code, -> { String }, optional: true, nullable: false

          field :state, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
