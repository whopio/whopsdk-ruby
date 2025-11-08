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

      # Whether the course will award its students a PDF certificate after completing
      # all lessons
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :certificate_after_completion_enabled

      # The chapters and lessons to update
      sig { returns(T.nilable(T::Array[WhopSDK::CourseUpdateParams::Chapter])) }
      attr_accessor :chapters

      # The cover image URL of the course
      sig { returns(T.nilable(String)) }
      attr_accessor :cover_image

      # A short description of the course
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The available languages for a course
      sig { returns(T.nilable(WhopSDK::Languages::OrSymbol)) }
      attr_accessor :language

      # The decimal order position of the course within its experience. Use fractional
      # values (e.g., 1.5) to place between existing courses.
      sig { returns(T.nilable(String)) }
      attr_accessor :order

      # Whether the course requires students to complete the previous lesson before
      # moving on to the next one
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :require_completing_lessons_in_order

      # A short tagline for the course
      sig { returns(T.nilable(String)) }
      attr_accessor :tagline

      # The thumbnail for the course in png, jpeg, or gif format
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::CourseUpdateParams::Thumbnail::AttachmentInputWithDirectUploadID,
              WhopSDK::CourseUpdateParams::Thumbnail::AttachmentInputWithID
            )
          )
        )
      end
      attr_accessor :thumbnail

      # The title of the course
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
          cover_image: T.nilable(String),
          description: T.nilable(String),
          language: T.nilable(WhopSDK::Languages::OrSymbol),
          order: T.nilable(String),
          require_completing_lessons_in_order: T.nilable(T::Boolean),
          tagline: T.nilable(String),
          thumbnail:
            T.nilable(
              T.any(
                WhopSDK::CourseUpdateParams::Thumbnail::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::CourseUpdateParams::Thumbnail::AttachmentInputWithID::OrHash
              )
            ),
          title: T.nilable(String),
          visibility: T.nilable(WhopSDK::CourseVisibilities::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
        # The decimal order position of the course within its experience. Use fractional
        # values (e.g., 1.5) to place between existing courses.
        order: nil,
        # Whether the course requires students to complete the previous lesson before
        # moving on to the next one
        require_completing_lessons_in_order: nil,
        # A short tagline for the course
        tagline: nil,
        # The thumbnail for the course in png, jpeg, or gif format
        thumbnail: nil,
        # The title of the course
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
            cover_image: T.nilable(String),
            description: T.nilable(String),
            language: T.nilable(WhopSDK::Languages::OrSymbol),
            order: T.nilable(String),
            require_completing_lessons_in_order: T.nilable(T::Boolean),
            tagline: T.nilable(String),
            thumbnail:
              T.nilable(
                T.any(
                  WhopSDK::CourseUpdateParams::Thumbnail::AttachmentInputWithDirectUploadID,
                  WhopSDK::CourseUpdateParams::Thumbnail::AttachmentInputWithID
                )
              ),
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

      # The thumbnail for the course in png, jpeg, or gif format
      module Thumbnail
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::CourseUpdateParams::Thumbnail::AttachmentInputWithDirectUploadID,
              WhopSDK::CourseUpdateParams::Thumbnail::AttachmentInputWithID
            )
          end

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CourseUpdateParams::Thumbnail::AttachmentInputWithDirectUploadID,
                WhopSDK::Internal::AnyHash
              )
            end

          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          sig { returns(String) }
          attr_accessor :direct_upload_id

          # Input for an attachment
          sig { params(direct_upload_id: String).returns(T.attached_class) }
          def self.new(
            # This ID should be used the first time you upload an attachment. It is the ID of
            # the direct upload that was created when uploading the file to S3 via the
            # mediaDirectUpload mutation.
            direct_upload_id:
          )
          end

          sig { override.returns({ direct_upload_id: String }) }
          def to_hash
          end
        end

        class AttachmentInputWithID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CourseUpdateParams::Thumbnail::AttachmentInputWithID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          sig { returns(String) }
          attr_accessor :id

          # Input for an attachment
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing attachment object. Use this when updating a resource and
            # keeping a subset of the attachments. Don't use this unless you know what you're
            # doing.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[WhopSDK::CourseUpdateParams::Thumbnail::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
