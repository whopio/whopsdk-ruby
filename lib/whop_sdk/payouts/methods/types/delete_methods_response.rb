# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        class DeleteMethodsResponse < Internal::Types::Model
          field :deleted, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
