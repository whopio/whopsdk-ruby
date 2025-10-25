# typed: strong

module WhopSDK
  module Models
    class CourseChapterCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseChapterCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the course to create the chapter in
      sig { returns(String) }
      attr_accessor :course_id

      # The title of the chapter
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          course_id: String,
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the course to create the chapter in
        course_id:,
        # The title of the chapter
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            course_id: String,
            title: T.nilable(String),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
