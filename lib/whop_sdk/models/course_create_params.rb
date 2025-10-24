# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Courses#create
    class CourseCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute experience_id
      #   The ID of the experience to create the course in
      #
      #   @return [String]
      required :experience_id, String

      # @!attribute title
      #   The title of the course
      #
      #   @return [String]
      required :title, String

      # @!attribute tagline
      #   The tagline of the course
      #
      #   @return [String, nil]
      optional :tagline, String, nil?: true

      # @!attribute thumbnail
      #   The thumbnail for the course in png, jpeg, or gif format
      #
      #   @return [WhopSDK::Models::CourseCreateParams::Thumbnail, nil]
      optional :thumbnail, -> { WhopSDK::CourseCreateParams::Thumbnail }, nil?: true

      # @!method initialize(experience_id:, title:, tagline: nil, thumbnail: nil, request_options: {})
      #   @param experience_id [String] The ID of the experience to create the course in
      #
      #   @param title [String] The title of the course
      #
      #   @param tagline [String, nil] The tagline of the course
      #
      #   @param thumbnail [WhopSDK::Models::CourseCreateParams::Thumbnail, nil] The thumbnail for the course in png, jpeg, or gif format
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Thumbnail < WhopSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of an existing attachment object. Use this when updating a resource and
        #   keeping a subset of the attachments. Don't use this unless you know what you're
        #   doing.
        #
        #   @return [String, nil]
        optional :id, String, nil?: true

        # @!attribute direct_upload_id
        #   This ID should be used the first time you upload an attachment. It is the ID of
        #   the direct upload that was created when uploading the file to S3 via the
        #   mediaDirectUpload mutation.
        #
        #   @return [String, nil]
        optional :direct_upload_id, String, nil?: true

        # @!method initialize(id: nil, direct_upload_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {WhopSDK::Models::CourseCreateParams::Thumbnail} for more details.
        #
        #   The thumbnail for the course in png, jpeg, or gif format
        #
        #   @param id [String, nil] The ID of an existing attachment object. Use this when updating a resource and k
        #
        #   @param direct_upload_id [String, nil] This ID should be used the first time you upload an attachment. It is the ID of
      end
    end
  end
end
