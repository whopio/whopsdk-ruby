# frozen_string_literal: true

module Whop_sdk
  module Users
    module Fees
      module Types
        class RetrieveFeesRequest < Internal::Types::Model
          field :user_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
