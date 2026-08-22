# frozen_string_literal: true

module Whop_sdk
  module ResolutionCenterCases
    module Types
      # How many of the matching cases were opened for each reason. Every reason is present, including those with a
      # count of zero.
      class SummaryResolutionCenterCasesResponseGroupsReason < Internal::Types::Model
        field :fraudulent, -> { Integer }, optional: false, nullable: false

        field :not_as_described, -> { Integer }, optional: false, nullable: false

        field :product_not_received, -> { Integer }, optional: false, nullable: false

        field :product_unacceptable, -> { Integer }, optional: false, nullable: false

        field :subscription_canceled, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
