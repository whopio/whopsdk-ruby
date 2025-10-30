# typed: strong

module WhopSDK
  module Models
    class CourseStudentListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseStudentListParams, WhopSDK::Internal::AnyHash)
        end

      # The ID of the course
      sig { returns(String) }
      attr_accessor :course_id

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :after

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_accessor :before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :first

      # Filter students by name - returns students whose names match the keyword
      sig { returns(T.nilable(String)) }
      attr_accessor :keyword

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :last

      sig do
        params(
          course_id: String,
          after: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          keyword: T.nilable(String),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the course
        course_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Filter students by name - returns students whose names match the keyword
        keyword: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            course_id: String,
            after: T.nilable(String),
            before: T.nilable(String),
            first: T.nilable(Integer),
            keyword: T.nilable(String),
            last: T.nilable(Integer),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
