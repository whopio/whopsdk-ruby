# typed: strong

module WhopSDK
  module Models
    class CourseLessonMarkAsCompletedParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CourseLessonMarkAsCompletedParams,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :lesson_id

      sig do
        params(
          lesson_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(lesson_id:, request_options: {})
      end

      sig do
        override.returns(
          { lesson_id: String, request_options: WhopSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
