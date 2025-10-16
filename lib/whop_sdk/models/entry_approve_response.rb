# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Entries#approve
    class EntryApproveResponse < WhopSDK::Internal::Type::BaseModel
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
