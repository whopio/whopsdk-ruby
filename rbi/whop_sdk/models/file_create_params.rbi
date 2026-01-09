# typed: strong

module WhopSDK
  module Models
    class FileCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::FileCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The filename of the file
      sig { returns(String) }
      attr_accessor :filename

      sig do
        params(
          filename: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The filename of the file
        filename:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { filename: String, request_options: WhopSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
