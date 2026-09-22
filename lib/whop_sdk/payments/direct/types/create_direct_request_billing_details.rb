# frozen_string_literal: true

module Whop_sdk
  module Payments
    module Direct
      module Types
        # The buyer's billing details.
        class CreateDirectRequestBillingDetails < Internal::Types::Model
          field :address, -> { Whop_sdk::Payments::Direct::Types::CreateDirectRequestBillingDetailsAddress }, optional: false, nullable: false

          field :email, -> { String }, optional: false, nullable: false

          field :name, -> { String }, optional: false, nullable: false

          field :phone, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
