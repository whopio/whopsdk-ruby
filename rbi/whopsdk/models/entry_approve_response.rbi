# typed: strong

module Whopsdk
  module Models
    class EntryApproveResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::EntryApproveResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # The ID of the job.
      sig { returns(String) }
      attr_accessor :job_id

      # An object representing an asynchronous job.
      sig { params(job_id: String).returns(T.attached_class) }
      def self.new(
        # The ID of the job.
        job_id:
      )
      end

      sig { override.returns({ job_id: String }) }
      def to_hash
      end
    end
  end
end
