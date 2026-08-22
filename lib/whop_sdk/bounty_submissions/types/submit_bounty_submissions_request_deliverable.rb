# frozen_string_literal: true

module Whop_sdk
  module BountySubmissions
    module Types
      # Work to attach to the submission. Combine `urls`, `file_ids`, and `caption` freely; all are optional.
      class SubmitBountySubmissionsRequestDeliverable < Internal::Types::Model
        field :caption, -> { String }, optional: true, nullable: false

        field :file_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :urls, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
