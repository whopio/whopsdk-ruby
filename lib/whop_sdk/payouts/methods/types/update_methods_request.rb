# frozen_string_literal: true

module Whop_sdk
  module Payouts
    module Methods
      module Types
        class UpdateMethodsRequest < Internal::Types::Model
          field :id, -> { String }, optional: false, nullable: false

          field :is_default, -> { Internal::Types::Boolean }, optional: true, nullable: false

          field :nickname, -> { String }, optional: true, nullable: false
        end
      end
    end
  end
end
