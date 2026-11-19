# frozen_string_literal: true

module Whop_sdk
  module SuspensionAppeals
    module Types
      class CreateSuspensionAppealsRequestSuspensionAppealSubmissionProofsItem < Internal::Types::Model
        field :explanation, -> { String }, optional: false, nullable: false

        field :file_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :receipt_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
