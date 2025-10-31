# typed: strong

module WhopSDK
  module Resources
    class Courses
      # Creates a new course module in an experience
      #
      # Required permissions:
      #
      # - `courses:update`
      sig do
        params(
          experience_id: String,
          title: String,
          certificate_after_completion_enabled: T.nilable(T::Boolean),
          cover_image: T.nilable(String),
          require_completing_lessons_in_order: T.nilable(T::Boolean),
          tagline: T.nilable(String),
          thumbnail: WhopSDK::CourseCreateParams::Thumbnail::OrHash,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Course)
      end
      def create(
        # The ID of the experience to create the course in
        experience_id:,
        # The title of the course
        title:,
        # Whether the course will award its students a PDF certificate after completing
        # all lessons
        certificate_after_completion_enabled: nil,
        # The cover image URL of the course
        cover_image: nil,
        # Whether the course requires students to complete the previous lesson before
        # moving on to the next one
        require_completing_lessons_in_order: nil,
        # The tagline of the course
        tagline: nil,
        # The thumbnail for the course in png, jpeg, or gif format
        thumbnail: nil,
        request_options: {}
      )
      end

      # Retrieves a course by ID
      #
      # Required permissions:
      #
      # - `courses:read`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Course)
      end
      def retrieve(id, request_options: {})
      end

      # Updates a course
      #
      # Required permissions:
      #
      # - `courses:update`
      sig do
        params(
          id: String,
          certificate_after_completion_enabled: T.nilable(T::Boolean),
          chapters:
            T.nilable(T::Array[WhopSDK::CourseUpdateParams::Chapter::OrHash]),
          cover_image: T.nilable(String),
          description: T.nilable(String),
          language: T.nilable(WhopSDK::Languages::OrSymbol),
          require_completing_lessons_in_order: T.nilable(T::Boolean),
          tagline: T.nilable(String),
          thumbnail: WhopSDK::CourseUpdateParams::Thumbnail::OrHash,
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Course)
      end
      def update(
        id,
        # Whether the course will award its students a PDF certificate after completing
        # all lessons
        certificate_after_completion_enabled: nil,
        # The chapters and lessons to update
        chapters: nil,
        # The cover image URL of the course
        cover_image: nil,
        # A short description of the course
        description: nil,
        # The available languages for a course
        language: nil,
        # Whether the course requires students to complete the previous lesson before
        # moving on to the next one
        require_completing_lessons_in_order: nil,
        # A short tagline for the course
        tagline: nil,
        # The thumbnail for the course in png, jpeg, or gif format
        thumbnail: nil,
        # The title of the course
        title: nil,
        request_options: {}
      )
      end

      # Lists courses for an experience or company
      #
      # Required permissions:
      #
      # - `courses:read`
      sig do
        params(
          after: T.nilable(String),
          before: T.nilable(String),
          company_id: T.nilable(String),
          experience_id: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::CourseListResponse]
        )
      end
      def list(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # The ID of the company
        company_id: nil,
        # The ID of the experience
        experience_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Deletes a course
      #
      # Required permissions:
      #
      # - `courses:update`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(id, request_options: {})
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
