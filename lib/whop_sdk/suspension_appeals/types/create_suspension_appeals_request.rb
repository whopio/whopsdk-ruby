# frozen_string_literal: true

module Whop_sdk
  module SuspensionAppeals
    module Types
      class CreateSuspensionAppealsRequest < Internal::Types::Model
        field :account_id, -> { String }, optional: true, nullable: false

        field :suspension_appeal_submission, -> { Whop_sdk::SuspensionAppeals::Types::CreateSuspensionAppealsRequestSuspensionAppealSubmission }, optional: false, nullable: false
      end
    end
  end
end
