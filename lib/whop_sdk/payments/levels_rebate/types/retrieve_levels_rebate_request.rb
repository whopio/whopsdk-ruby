# frozen_string_literal: true

module Whop_sdk
  module Payments
    module LevelsRebate
      module Types
        class RetrieveLevelsRebateRequest < Internal::Types::Model
          field :payment_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
