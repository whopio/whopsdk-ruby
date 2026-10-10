# frozen_string_literal: true

module Whop_sdk
  module BountySubmissions
    module Types
      # Work to attach to a livestream attempt. Combine `urls`, `file_ids`, and `caption` freely; all are optional. If
      # the attempt already went to review when its stream ended, the deliverable attaches to it once, until reviewers
      # start voting. Data capture attempts take no deliverable.
      class SubmitBountySubmissionsRequestDeliverable < Internal::Types::Model
        field :caption, -> { String }, optional: true, nullable: false

        field :file_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :urls, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
