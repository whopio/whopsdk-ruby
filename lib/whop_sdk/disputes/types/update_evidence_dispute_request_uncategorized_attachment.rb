# frozen_string_literal: true

module Whop_sdk
  module Disputes
    module Types
      # A file upload for evidence that does not fit into the other categories.
      class UpdateEvidenceDisputeRequestUncategorizedAttachment < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
