# typed: strong

module WhopSDK
  module Models
    class CourseLessonUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::CourseLessonUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # Completion requirements for quiz/knowledge check lessons
      sig do
        returns(
          T.nilable(
            WhopSDK::CourseLessonUpdateParams::AssessmentCompletionRequirement
          )
        )
      end
      attr_reader :assessment_completion_requirement

      sig do
        params(
          assessment_completion_requirement:
            T.nilable(
              WhopSDK::CourseLessonUpdateParams::AssessmentCompletionRequirement::OrHash
            )
        ).void
      end
      attr_writer :assessment_completion_requirement

      # Assessment questions for quiz/knowledge check lessons. Replaces all existing
      # questions.
      sig do
        returns(
          T.nilable(
            T::Array[WhopSDK::CourseLessonUpdateParams::AssessmentQuestion]
          )
        )
      end
      attr_accessor :assessment_questions

      # General attachments for the lesson (PDFs, files, etc). Replaces all existing
      # attachments.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                WhopSDK::CourseLessonUpdateParams::Attachment::AttachmentInputWithDirectUploadID,
                WhopSDK::CourseLessonUpdateParams::Attachment::AttachmentInputWithID
              )
            ]
          )
        )
      end
      attr_accessor :attachments

      # The content of the lesson
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # Days from course start until unlock
      sig { returns(T.nilable(Integer)) }
      attr_accessor :days_from_course_start_until_unlock

      # The available types for a lesson
      sig { returns(T.nilable(WhopSDK::LessonTypes::OrSymbol)) }
      attr_accessor :lesson_type

      # The main PDF file for this lesson
      sig do
        returns(
          T.nilable(
            T.any(
              WhopSDK::CourseLessonUpdateParams::MainPdf::AttachmentInputWithDirectUploadID,
              WhopSDK::CourseLessonUpdateParams::MainPdf::AttachmentInputWithID
            )
          )
        )
      end
      attr_accessor :main_pdf

      # Maximum number of attempts allowed for assessments
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_attempts

      # The ID of the Mux asset to attach to this lesson for video lessons
      sig { returns(T.nilable(String)) }
      attr_accessor :mux_asset_id

      # The title of the lesson
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      # The available visibilities for a lesson. Determines how / whether a lesson is
      # visible to users.
      sig { returns(T.nilable(WhopSDK::LessonVisibilities::OrSymbol)) }
      attr_accessor :visibility

      sig do
        params(
          assessment_completion_requirement:
            T.nilable(
              WhopSDK::CourseLessonUpdateParams::AssessmentCompletionRequirement::OrHash
            ),
          assessment_questions:
            T.nilable(
              T::Array[
                WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::OrHash
              ]
            ),
          attachments:
            T.nilable(
              T::Array[
                T.any(
                  WhopSDK::CourseLessonUpdateParams::Attachment::AttachmentInputWithDirectUploadID::OrHash,
                  WhopSDK::CourseLessonUpdateParams::Attachment::AttachmentInputWithID::OrHash
                )
              ]
            ),
          content: T.nilable(String),
          days_from_course_start_until_unlock: T.nilable(Integer),
          lesson_type: T.nilable(WhopSDK::LessonTypes::OrSymbol),
          main_pdf:
            T.nilable(
              T.any(
                WhopSDK::CourseLessonUpdateParams::MainPdf::AttachmentInputWithDirectUploadID::OrHash,
                WhopSDK::CourseLessonUpdateParams::MainPdf::AttachmentInputWithID::OrHash
              )
            ),
          max_attempts: T.nilable(Integer),
          mux_asset_id: T.nilable(String),
          title: T.nilable(String),
          visibility: T.nilable(WhopSDK::LessonVisibilities::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Completion requirements for quiz/knowledge check lessons
        assessment_completion_requirement: nil,
        # Assessment questions for quiz/knowledge check lessons. Replaces all existing
        # questions.
        assessment_questions: nil,
        # General attachments for the lesson (PDFs, files, etc). Replaces all existing
        # attachments.
        attachments: nil,
        # The content of the lesson
        content: nil,
        # Days from course start until unlock
        days_from_course_start_until_unlock: nil,
        # The available types for a lesson
        lesson_type: nil,
        # The main PDF file for this lesson
        main_pdf: nil,
        # Maximum number of attempts allowed for assessments
        max_attempts: nil,
        # The ID of the Mux asset to attach to this lesson for video lessons
        mux_asset_id: nil,
        # The title of the lesson
        title: nil,
        # The available visibilities for a lesson. Determines how / whether a lesson is
        # visible to users.
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            assessment_completion_requirement:
              T.nilable(
                WhopSDK::CourseLessonUpdateParams::AssessmentCompletionRequirement
              ),
            assessment_questions:
              T.nilable(
                T::Array[WhopSDK::CourseLessonUpdateParams::AssessmentQuestion]
              ),
            attachments:
              T.nilable(
                T::Array[
                  T.any(
                    WhopSDK::CourseLessonUpdateParams::Attachment::AttachmentInputWithDirectUploadID,
                    WhopSDK::CourseLessonUpdateParams::Attachment::AttachmentInputWithID
                  )
                ]
              ),
            content: T.nilable(String),
            days_from_course_start_until_unlock: T.nilable(Integer),
            lesson_type: T.nilable(WhopSDK::LessonTypes::OrSymbol),
            main_pdf:
              T.nilable(
                T.any(
                  WhopSDK::CourseLessonUpdateParams::MainPdf::AttachmentInputWithDirectUploadID,
                  WhopSDK::CourseLessonUpdateParams::MainPdf::AttachmentInputWithID
                )
              ),
            max_attempts: T.nilable(Integer),
            mux_asset_id: T.nilable(String),
            title: T.nilable(String),
            visibility: T.nilable(WhopSDK::LessonVisibilities::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class AssessmentCompletionRequirement < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseLessonUpdateParams::AssessmentCompletionRequirement,
              WhopSDK::Internal::AnyHash
            )
          end

        # The minimum grade percentage required to pass (0-100). Cannot be set together
        # with minimum_questions_correct.
        sig { returns(T.nilable(Float)) }
        attr_accessor :minimum_grade_percent

        # The minimum number of questions that must be answered correctly. Cannot be set
        # together with minimum_grade_percent.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :minimum_questions_correct

        # Completion requirements for quiz/knowledge check lessons
        sig do
          params(
            minimum_grade_percent: T.nilable(Float),
            minimum_questions_correct: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # The minimum grade percentage required to pass (0-100). Cannot be set together
          # with minimum_questions_correct.
          minimum_grade_percent: nil,
          # The minimum number of questions that must be answered correctly. Cannot be set
          # together with minimum_grade_percent.
          minimum_questions_correct: nil
        )
        end

        sig do
          override.returns(
            {
              minimum_grade_percent: T.nilable(Float),
              minimum_questions_correct: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end

      class AssessmentQuestion < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CourseLessonUpdateParams::AssessmentQuestion,
              WhopSDK::Internal::AnyHash
            )
          end

        # The correct answer for the question. Used for short answer questions
        sig { returns(String) }
        attr_accessor :correct_answer

        # The text of the question
        sig { returns(String) }
        attr_accessor :question_text

        # The type of the question
        sig { returns(WhopSDK::AssessmentQuestionTypes::OrSymbol) }
        attr_accessor :question_type

        # The ID of an existing question. If provided, the question will be updated. If
        # not provided, a new question will be created.
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # Optional image attachment for the question
        sig do
          returns(
            T.nilable(
              T.any(
                WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image::AttachmentInputWithDirectUploadID,
                WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image::AttachmentInputWithID
              )
            )
          )
        end
        attr_accessor :image

        # The answer options for multiple choice/select questions
        sig do
          returns(
            T.nilable(
              T::Array[
                WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Option
              ]
            )
          )
        end
        attr_accessor :options

        # Input for creating or updating an assessment question
        sig do
          params(
            correct_answer: String,
            question_text: String,
            question_type: WhopSDK::AssessmentQuestionTypes::OrSymbol,
            id: T.nilable(String),
            image:
              T.nilable(
                T.any(
                  WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image::AttachmentInputWithDirectUploadID::OrHash,
                  WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image::AttachmentInputWithID::OrHash
                )
              ),
            options:
              T.nilable(
                T::Array[
                  WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Option::OrHash
                ]
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The correct answer for the question. Used for short answer questions
          correct_answer:,
          # The text of the question
          question_text:,
          # The type of the question
          question_type:,
          # The ID of an existing question. If provided, the question will be updated. If
          # not provided, a new question will be created.
          id: nil,
          # Optional image attachment for the question
          image: nil,
          # The answer options for multiple choice/select questions
          options: nil
        )
        end

        sig do
          override.returns(
            {
              correct_answer: String,
              question_text: String,
              question_type: WhopSDK::AssessmentQuestionTypes::OrSymbol,
              id: T.nilable(String),
              image:
                T.nilable(
                  T.any(
                    WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image::AttachmentInputWithDirectUploadID,
                    WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image::AttachmentInputWithID
                  )
                ),
              options:
                T.nilable(
                  T::Array[
                    WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Option
                  ]
                )
            }
          )
        end
        def to_hash
        end

        # Optional image attachment for the question
        module Image
          extend WhopSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image::AttachmentInputWithDirectUploadID,
                WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image::AttachmentInputWithID
              )
            end

          class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image::AttachmentInputWithDirectUploadID,
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
                  WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image::AttachmentInputWithID,
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
              T::Array[
                WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Image::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class Option < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CourseLessonUpdateParams::AssessmentQuestion::Option,
                WhopSDK::Internal::AnyHash
              )
            end

          # Whether this option is a correct answer
          sig { returns(T::Boolean) }
          attr_accessor :is_correct

          # The text of the answer option
          sig { returns(String) }
          attr_accessor :option_text

          # The ID of an existing option. If provided, the option will be updated. If not
          # provided, a new option will be created.
          sig { returns(T.nilable(String)) }
          attr_accessor :id

          # Input for creating or updating an assessment question option
          sig do
            params(
              is_correct: T::Boolean,
              option_text: String,
              id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether this option is a correct answer
            is_correct:,
            # The text of the answer option
            option_text:,
            # The ID of an existing option. If provided, the option will be updated. If not
            # provided, a new option will be created.
            id: nil
          )
          end

          sig do
            override.returns(
              {
                is_correct: T::Boolean,
                option_text: String,
                id: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end

      # Input for an attachment
      module Attachment
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::CourseLessonUpdateParams::Attachment::AttachmentInputWithDirectUploadID,
              WhopSDK::CourseLessonUpdateParams::Attachment::AttachmentInputWithID
            )
          end

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CourseLessonUpdateParams::Attachment::AttachmentInputWithDirectUploadID,
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
                WhopSDK::CourseLessonUpdateParams::Attachment::AttachmentInputWithID,
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
            T::Array[WhopSDK::CourseLessonUpdateParams::Attachment::Variants]
          )
        end
        def self.variants
        end
      end

      # The main PDF file for this lesson
      module MainPdf
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::CourseLessonUpdateParams::MainPdf::AttachmentInputWithDirectUploadID,
              WhopSDK::CourseLessonUpdateParams::MainPdf::AttachmentInputWithID
            )
          end

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::CourseLessonUpdateParams::MainPdf::AttachmentInputWithDirectUploadID,
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
                WhopSDK::CourseLessonUpdateParams::MainPdf::AttachmentInputWithID,
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
            T::Array[WhopSDK::CourseLessonUpdateParams::MainPdf::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
