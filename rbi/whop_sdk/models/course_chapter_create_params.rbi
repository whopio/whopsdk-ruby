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

      # The unique identifier of the course to create the chapter in (e.g.,
      # "course_XXXXX").
      sig { returns(String) }
      attr_accessor :course_id

      # The display title of the chapter (e.g., "Module 1: Introduction").
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
        # The unique identifier of the course to create the chapter in (e.g.,
        # "course_XXXXX").
        course_id:,
        # The display title of the chapter (e.g., "Module 1: Introduction").
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
