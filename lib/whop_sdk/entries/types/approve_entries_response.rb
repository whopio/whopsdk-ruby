# frozen_string_literal: true

module Whop_sdk
  module Entries
    module Types
      # An object representing an asynchronous job.
      class ApproveEntriesResponse < Internal::Types::Model
        field :job_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
