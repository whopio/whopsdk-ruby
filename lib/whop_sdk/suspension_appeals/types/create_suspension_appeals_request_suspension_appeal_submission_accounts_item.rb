# frozen_string_literal: true

module Whop_sdk
  module SuspensionAppeals
    module Types
      class CreateSuspensionAppealsRequestSuspensionAppealSubmissionAccountsItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :suspended_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
