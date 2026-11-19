# frozen_string_literal: true

module Whop_sdk
  module SuspensionAppeals
    module Types
      class CreateSuspensionAppealsRequestSuspensionAppealSubmission < Internal::Types::Model
        field :accounts, -> { Internal::Types::Array[Whop_sdk::SuspensionAppeals::Types::CreateSuspensionAppealsRequestSuspensionAppealSubmissionAccountsItem] }, optional: false, nullable: false

        field :additional_information, -> { String }, optional: true, nullable: false

        field :business_description, -> { String }, optional: true, nullable: false

        field :business_fulfillment, -> { String }, optional: true, nullable: false

        field :business_remediation, -> { String }, optional: true, nullable: false

        field :evidence_file_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :evidence_links, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :proofs, -> { Internal::Types::Array[Whop_sdk::SuspensionAppeals::Types::CreateSuspensionAppealsRequestSuspensionAppealSubmissionProofsItem] }, optional: true, nullable: false

        field :video_file_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
