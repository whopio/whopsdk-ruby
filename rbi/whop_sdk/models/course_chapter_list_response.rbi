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

      # The ID of the chapter. Looks like chap_XXX
      sig { returns(String) }
      attr_accessor :id

      # The order of the chapter within its course
      sig { returns(Integer) }
      attr_accessor :order

      # The title of the chapter
      sig { returns(String) }
      attr_accessor :title

      # A chapter from the courses app
      sig do
        params(id: String, order: Integer, title: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The ID of the chapter. Looks like chap_XXX
        id:,
        # The order of the chapter within its course
        order:,
        # The title of the chapter
        title:
      )
      end

      sig { override.returns({ id: String, order: Integer, title: String }) }
      def to_hash
      end
    end
  end
end
