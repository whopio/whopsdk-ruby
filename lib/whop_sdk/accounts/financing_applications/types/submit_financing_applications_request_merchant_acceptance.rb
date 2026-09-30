# frozen_string_literal: true

module Whop_sdk
  module Accounts
    module FinancingApplications
      module Types
        class SubmitFinancingApplicationsRequestMerchantAcceptance < Internal::Types::Model
          field :accepted, -> { Internal::Types::Boolean }, optional: false, nullable: false

          field :terms_version, -> { String }, optional: false, nullable: false
        end
      end
    end
  end
end
