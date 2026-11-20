# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module AffiliateProgram
      module Types
        class RetrieveAffiliateProgramRequest < Internal::Types::Model
          field :account_id, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
