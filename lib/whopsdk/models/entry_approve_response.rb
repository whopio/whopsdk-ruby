# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Entries#approve
    class EntryApproveResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute job_id
      #   The ID of the job.
      #
      #   @return [String]
      required :job_id, String

      # @!method initialize(job_id:)
      #   An object representing an asynchronous job.
      #
      #   @param job_id [String] The ID of the job.
    end
  end
end
