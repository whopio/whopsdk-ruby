# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::CourseLessons#create
    class CourseLessonCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute chapter_id
      #   The ID of the chapter to create the lesson in
      #
      #   @return [String]
      required :chapter_id, String

      # @!attribute lesson_type
      #   The type of the lesson
      #
      #   @return [Symbol, WhopSDK::Models::LessonTypes]
      required :lesson_type, enum: -> { WhopSDK::LessonTypes }

      # @!attribute content
      #   The content of the lesson
      #
      #   @return [String, nil]
      optional :content, String, nil?: true

      # @!attribute days_from_course_start_until_unlock
      #   Days from course start until unlock
      #
      #   @return [Integer, nil]
      optional :days_from_course_start_until_unlock, Integer, nil?: true

      # @!attribute embed_id
      #   ID for the embed (YouTube video ID or Loom share ID)
      #
      #   @return [String, nil]
      optional :embed_id, String, nil?: true

      # @!attribute embed_type
      #   The type of embed for a lesson
      #
      #   @return [Symbol, WhopSDK::Models::EmbedType, nil]
      optional :embed_type, enum: -> { WhopSDK::EmbedType }, nil?: true

      # @!attribute thumbnail
      #   The thumbnail for the lesson in png, jpeg, or gif format
      #
      #   @return [WhopSDK::Models::CourseLessonCreateParams::Thumbnail::AttachmentInputWithDirectUploadID, WhopSDK::Models::CourseLessonCreateParams::Thumbnail::AttachmentInputWithID, nil]
      optional :thumbnail, union: -> { WhopSDK::CourseLessonCreateParams::Thumbnail }, nil?: true

      # @!attribute title
      #   The title of the lesson
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!method initialize(chapter_id:, lesson_type:, content: nil, days_from_course_start_until_unlock: nil, embed_id: nil, embed_type: nil, thumbnail: nil, title: nil, request_options: {})
      #   @param chapter_id [String] The ID of the chapter to create the lesson in
      #
      #   @param lesson_type [Symbol, WhopSDK::Models::LessonTypes] The type of the lesson
      #
      #   @param content [String, nil] The content of the lesson
      #
      #   @param days_from_course_start_until_unlock [Integer, nil] Days from course start until unlock
      #
      #   @param embed_id [String, nil] ID for the embed (YouTube video ID or Loom share ID)
      #
      #   @param embed_type [Symbol, WhopSDK::Models::EmbedType, nil] The type of embed for a lesson
      #
      #   @param thumbnail [WhopSDK::Models::CourseLessonCreateParams::Thumbnail::AttachmentInputWithDirectUploadID, WhopSDK::Models::CourseLessonCreateParams::Thumbnail::AttachmentInputWithID, nil] The thumbnail for the lesson in png, jpeg, or gif format
      #
      #   @param title [String, nil] The title of the lesson
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The thumbnail for the lesson in png, jpeg, or gif format
      module Thumbnail
        extend WhopSDK::Internal::Type::Union

        # Input for an attachment
        variant -> { WhopSDK::CourseLessonCreateParams::Thumbnail::AttachmentInputWithDirectUploadID }

        # Input for an attachment
        variant -> { WhopSDK::CourseLessonCreateParams::Thumbnail::AttachmentInputWithID }

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          # @!attribute direct_upload_id
          #   This ID should be used the first time you upload an attachment. It is the ID of
          #   the direct upload that was created when uploading the file to S3 via the
          #   mediaDirectUpload mutation.
          #
          #   @return [String]
          required :direct_upload_id, String

          # @!method initialize(direct_upload_id:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CourseLessonCreateParams::Thumbnail::AttachmentInputWithDirectUploadID}
          #   for more details.
          #
          #   Input for an attachment
          #
          #   @param direct_upload_id [String] This ID should be used the first time you upload an attachment. It is the ID of
        end

        class AttachmentInputWithID < WhopSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The ID of an existing attachment object. Use this when updating a resource and
          #   keeping a subset of the attachments. Don't use this unless you know what you're
          #   doing.
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:)
          #   Some parameter documentations has been truncated, see
          #   {WhopSDK::Models::CourseLessonCreateParams::Thumbnail::AttachmentInputWithID}
          #   for more details.
          #
          #   Input for an attachment
          #
          #   @param id [String] The ID of an existing attachment object. Use this when updating a resource and k
        end

        # @!method self.variants
        #   @return [Array(WhopSDK::Models::CourseLessonCreateParams::Thumbnail::AttachmentInputWithDirectUploadID, WhopSDK::Models::CourseLessonCreateParams::Thumbnail::AttachmentInputWithID)]
      end
    end
  end
end
