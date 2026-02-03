# typed: strong

module WhopSDK
  module Models
    # The upload status of a file
    module UploadStatus
      extend WhopSDK::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::UploadStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PENDING = T.let(:pending, WhopSDK::UploadStatus::TaggedSymbol)
      PROCESSING = T.let(:processing, WhopSDK::UploadStatus::TaggedSymbol)
      READY = T.let(:ready, WhopSDK::UploadStatus::TaggedSymbol)
      FAILED = T.let(:failed, WhopSDK::UploadStatus::TaggedSymbol)

      sig { override.returns(T::Array[WhopSDK::UploadStatus::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
