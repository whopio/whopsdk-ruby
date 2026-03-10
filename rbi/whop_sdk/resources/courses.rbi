# typed: strong

module WhopSDK
  module Resources
    # Courses
    class Courses
      # Create a new course within an experience, with optional chapters, lessons, and a
      # certificate.
      #
      # Required permissions:
      #
      # - `courses:update`
      sig do
        params(
          experience_id: String,
          title: String,
          certificate_after_completion_enabled: T.nilable(T::Boolean),
          order: T.nilable(String),
          require_completing_lessons_in_order: T.nilable(T::Boolean),
          tagline: T.nilable(String),
          thumbnail: T.nilable(WhopSDK::CourseCreateParams::Thumbnail::OrHash),
          visibility: T.nilable(WhopSDK::CourseVisibilities::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Course)
      end
      def create(
        # The unique identifier of the experience to create the course in (e.g.,
        # "exp_XXXXX").
        experience_id:,
        # The display title of the course (e.g., "Introduction to Web Development").
        title:,
        # Whether the course awards students a PDF certificate after completing all
        # lessons.
        certificate_after_completion_enabled: nil,
        # The decimal order position of the course within its experience. Use fractional
        # values (e.g., "1.5") to place between existing courses.
        order: nil,
        # Whether students must complete each lesson sequentially before advancing to the
        # next one.
        require_completing_lessons_in_order: nil,
        # A short tagline displayed beneath the course title (e.g., "Master the
        # fundamentals of design").
        tagline: nil,
        # The thumbnail image for the course in PNG, JPEG, or GIF format.
        thumbnail: nil,
        # The available visibilities for a course. Determines how / whether a course is
        # visible to users.
        visibility: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing course.
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
      def retrieve(
        # The unique identifier of the course to retrieve.
        id,
        request_options: {}
      )
      end

      # Update a course's title, description, visibility, thumbnail, or chapter
      # ordering.
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
          description: T.nilable(String),
          language: T.nilable(WhopSDK::Languages::OrSymbol),
          order: T.nilable(String),
          require_completing_lessons_in_order: T.nilable(T::Boolean),
          tagline: T.nilable(String),
          thumbnail: T.nilable(WhopSDK::CourseUpdateParams::Thumbnail::OrHash),
          title: T.nilable(String),
          visibility: T.nilable(WhopSDK::CourseVisibilities::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Course)
      end
      def update(
        # The unique identifier of the course to update (e.g., "course_XXXXX").
        id,
        # Whether the course awards students a PDF certificate after completing all
        # lessons.
        certificate_after_completion_enabled: nil,
        # A list of chapters with nested lessons to reorder or rename in bulk.
        chapters: nil,
        # A short description of the course displayed to students on the course page.
        description: nil,
        # The available languages for a course
        language: nil,
        # The decimal order position of the course within its experience. Use fractional
        # values (e.g., "1.5") to place between existing courses.
        order: nil,
        # Whether students must complete each lesson sequentially before advancing to the
        # next one.
        require_completing_lessons_in_order: nil,
        # A short tagline displayed beneath the course title (e.g., "Master the
        # fundamentals of design").
        tagline: nil,
        # The thumbnail image for the course in PNG, JPEG, or GIF format.
        thumbnail: nil,
        # The display title of the course (e.g., "Introduction to Web Development").
        title: nil,
        # The available visibilities for a course. Determines how / whether a course is
        # visible to users.
        visibility: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of courses, filtered by either an experience or a
      # company.
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
        # The unique identifier of the company to list courses for.
        company_id: nil,
        # The unique identifier of the experience to list courses for.
        experience_id: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        request_options: {}
      )
      end

      # Permanently delete a course and all of its chapters, lessons, and student
      # progress.
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
      def delete(
        # The unique identifier of the course to delete (e.g., "course_XXXXX").
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
