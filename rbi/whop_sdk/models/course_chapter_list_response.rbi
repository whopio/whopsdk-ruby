# typed: strong

module WhopSDK
  module Models
    class CourseChapterListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::CourseChapterListResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The unique identifier for the chapter.
      sig { returns(String) }
      attr_accessor :id

      # The sort position of this chapter within its parent course, starting from zero.
      sig { returns(Integer) }
      attr_accessor :order

      # The display name of the chapter shown to students. Maximum 150 characters.
      sig { returns(String) }
      attr_accessor :title

      # A grouping of related lessons within a course, used to organize content into
      # sections.
      sig do
        params(id: String, order: Integer, title: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The unique identifier for the chapter.
        id:,
        # The sort position of this chapter within its parent course, starting from zero.
        order:,
        # The display name of the chapter shown to students. Maximum 150 characters.
        title:
      )
      end

      sig { override.returns({ id: String, order: Integer, title: String }) }
      def to_hash
      end
    end
  end
end
