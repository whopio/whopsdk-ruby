# frozen_string_literal: true

module Whop_sdk
  module Verifications
    module Types
      # Selfie check of the person. Individual verifications only. `null` when the verification has no selfie check.
      class RetrieveVerificationsResponseSelfie < Internal::Types::Model
        field :capture, -> { Whop_sdk::Verifications::Types::RetrieveVerificationsResponseSelfieCapture }, optional: false, nullable: false

        field :status, -> { Whop_sdk::Verifications::Types::RetrieveVerificationsResponseSelfieStatus }, optional: false, nullable: false
      end
    end
  end
end
