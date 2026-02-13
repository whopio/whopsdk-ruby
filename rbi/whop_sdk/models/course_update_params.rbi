# typed: strong

module WhopSDK
  module Models
    class CourseUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # Whether the course awards students a PDF certificate after completing all
      # lessons.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :certificate_after_completion_enabled

      # A list of chapters with nested lessons to reorder or rename in bulk.
      sig { returns(T.nilable(T::Array[WhopSDK::CourseUpdateParams::Chapter])) }
      attr_accessor :chapters

      # A short description of the course displayed to students on the course page.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The available languages for a course
      sig { returns(T.nilable(WhopSDK::Languages::OrSymbol)) }
      attr_accessor :language

      # The decimal order position of the course within its experience. Use fractional
      # values (e.g., "1.5") to place between existing courses.
      sig { returns(T.nilable(String)) }
      attr_accessor :order

      # Whether students must complete each lesson sequentially before advancing to the
      # next one.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :require_completing_lessons_in_order

      # A short tagline displayed beneath the course title (e.g., "Master the
      # fundamentals of design").
      sig { returns(T.nilable(String)) }
      attr_accessor :tagline

      # The thumbnail image for the course in PNG, JPEG, or GIF format.
      sig { returns(T.nilable(WhopSDK::CourseUpdateParams::Thumbnail)) }
      attr_reader :thumbnail

      sig do
        params(
          thumbnail: T.nilable(WhopSDK::CourseUpdateParams::Thumbnail::OrHash)
        ).void
      end
      attr_writer :thumbnail

      # The display title of the course (e.g., "Introduction to Web Development").
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The available visibilities for a course. Determines how / whether a course is
      # visible to users.
      sig { returns(T.nilable(WhopSDK::CourseVisibilities::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            certificate_after_completion_enabled: T.nilable(T::Boolean),
            chapters: T.nilable(T::Array[WhopSDK::CourseUpdateParams::Chapter]),
            description: T.nilable(String),
            language: T.nilable(WhopSDK::Languages::OrSymbol),
            order: T.nilable(String),
            require_completing_lessons_in_order: T.nilable(T::Boolean),
            tagline: T.nilable(String),
            thumbnail: T.nilable(WhopSDK::CourseUpdateParams::Thumbnail),
            title: T.nilable(String),
            visibility: T.nilable(WhopSDK::CourseVisibilities::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Chapter < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseUpdateParams::Chapter,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of the chapter to update
        sig { returns(String) }
        attr_accessor :id

        # The order of the chapter within its course
        sig { returns(Integer) }
        attr_accessor :order

        # The title of the chapter
        sig { returns(String) }
        attr_accessor :title

        # The lessons to update within this chapter
        sig do
          returns(
            T.nilable(T::Array[WhopSDK::CourseUpdateParams::Chapter::Lesson])
          )
        end
        attr_accessor :lessons

        # Input for updating a chapter while updating a course
        sig do
          params(
            id: String,
            order: Integer,
            title: String,
            lessons:
              T.nilable(
                T::Array[WhopSDK::CourseUpdateParams::Chapter::Lesson::OrHash]
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the chapter to update
          id:,
          # The order of the chapter within its course
          order:,
          # The title of the chapter
          title:,
          # The lessons to update within this chapter
          lessons: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              order: Integer,
              title: String,
              lessons:
                T.nilable(
                  T::Array[WhopSDK::CourseUpdateParams::Chapter::Lesson]
                )
            }
          )
        end
        def to_hash
        end

        class Lesson < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CourseUpdateParams::Chapter::Lesson,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of the lesson to update
          sig { returns(String) }
          attr_accessor :id

          # The ID of the chapter this lesson belongs to (for moving between chapters)
          sig { returns(String) }
          attr_accessor :chapter_id

          # The order of the lesson within its chapter
          sig { returns(Integer) }
          attr_accessor :order

          # The title of the lesson
          sig { returns(String) }
          attr_accessor :title

          # Input for updating a lesson while updating a course
          sig do
            params(
              id: String,
              chapter_id: String,
              order: Integer,
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the lesson to update
            id:,
            # The ID of the chapter this lesson belongs to (for moving between chapters)
            chapter_id:,
            # The order of the lesson within its chapter
            order:,
            # The title of the lesson
            title:
          )
          end

          sig do
            override.returns(
              { id: String, chapter_id: String, order: Integer, title: String }
            )
          end
          def to_hash
          end
        end
      end

      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseUpdateParams::Thumbnail,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(String) }
        attr_accessor :id

        # The thumbnail image for the course in PNG, JPEG, or GIF format.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # The ID of an existing file object.
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
