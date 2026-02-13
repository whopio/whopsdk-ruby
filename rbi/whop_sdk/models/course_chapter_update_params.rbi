# typed: strong

module WhopSDK
  module Models
    class CourseChapterUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseChapterUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The new display title of the chapter (e.g., "Module 1: Introduction").
      sig { returns(String) }
      attr_accessor :title

      sig do
        params(
          title: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The new display title of the chapter (e.g., "Module 1: Introduction").
        title:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { title: String, request_options: WhopSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
