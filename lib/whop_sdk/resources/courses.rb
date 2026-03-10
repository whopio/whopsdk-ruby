# frozen_string_literal: true

module WhopSDK
  module Resources
    # Courses
    class Courses
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CourseCreateParams} for more details.
      #
      # Create a new course within an experience, with optional chapters, lessons, and a
      # certificate.
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload create(experience_id:, title:, certificate_after_completion_enabled: nil, order: nil, require_completing_lessons_in_order: nil, tagline: nil, thumbnail: nil, visibility: nil, request_options: {})
      #
      # @param experience_id [String] The unique identifier of the experience to create the course in (e.g., "exp_XXXX
      #
      # @param title [String] The display title of the course (e.g., "Introduction to Web Development").
      #
      # @param certificate_after_completion_enabled [Boolean, nil] Whether the course awards students a PDF certificate after completing all lesson
      #
      # @param order [String, nil] The decimal order position of the course within its experience. Use fractional v
      #
      # @param require_completing_lessons_in_order [Boolean, nil] Whether students must complete each lesson sequentially before advancing to the
      #
      # @param tagline [String, nil] A short tagline displayed beneath the course title (e.g., "Master the fundamenta
      #
      # @param thumbnail [WhopSDK::Models::CourseCreateParams::Thumbnail, nil] The thumbnail image for the course in PNG, JPEG, or GIF format.
      #
      # @param visibility [Symbol, WhopSDK::Models::CourseVisibilities, nil] The available visibilities for a course. Determines how / whether a course is vi
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Course]
      #
      # @see WhopSDK::Models::CourseCreateParams
      def create(params)
        parsed, options = WhopSDK::CourseCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "courses",
          body: parsed,
          model: WhopSDK::Course,
          options: options
        )
      end

      # Retrieves the details of an existing course.
      #
      # Required permissions:
      #
      # - `courses:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the course to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Course]
      #
      # @see WhopSDK::Models::CourseRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["courses/%1$s", id],
          model: WhopSDK::Course,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CourseUpdateParams} for more details.
      #
      # Update a course's title, description, visibility, thumbnail, or chapter
      # ordering.
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload update(id, certificate_after_completion_enabled: nil, chapters: nil, description: nil, language: nil, order: nil, require_completing_lessons_in_order: nil, tagline: nil, thumbnail: nil, title: nil, visibility: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the course to update (e.g., "course_XXXXX").
      #
      # @param certificate_after_completion_enabled [Boolean, nil] Whether the course awards students a PDF certificate after completing all lesson
      #
      # @param chapters [Array<WhopSDK::Models::CourseUpdateParams::Chapter>, nil] A list of chapters with nested lessons to reorder or rename in bulk.
      #
      # @param description [String, nil] A short description of the course displayed to students on the course page.
      #
      # @param language [Symbol, WhopSDK::Models::Languages, nil] The available languages for a course
      #
      # @param order [String, nil] The decimal order position of the course within its experience. Use fractional v
      #
      # @param require_completing_lessons_in_order [Boolean, nil] Whether students must complete each lesson sequentially before advancing to the
      #
      # @param tagline [String, nil] A short tagline displayed beneath the course title (e.g., "Master the fundamenta
      #
      # @param thumbnail [WhopSDK::Models::CourseUpdateParams::Thumbnail, nil] The thumbnail image for the course in PNG, JPEG, or GIF format.
      #
      # @param title [String, nil] The display title of the course (e.g., "Introduction to Web Development").
      #
      # @param visibility [Symbol, WhopSDK::Models::CourseVisibilities, nil] The available visibilities for a course. Determines how / whether a course is vi
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Course]
      #
      # @see WhopSDK::Models::CourseUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::CourseUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["courses/%1$s", id],
          body: parsed,
          model: WhopSDK::Course,
          options: options
        )
      end

      # Returns a paginated list of courses, filtered by either an experience or a
      # company.
      #
      # Required permissions:
      #
      # - `courses:read`
      #
      # @overload list(after: nil, before: nil, company_id: nil, experience_id: nil, first: nil, last: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param company_id [String, nil] The unique identifier of the company to list courses for.
      #
      # @param experience_id [String, nil] The unique identifier of the experience to list courses for.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CourseListResponse>]
      #
      # @see WhopSDK::Models::CourseListParams
      def list(params = {})
        parsed, options = WhopSDK::CourseListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "courses",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::CourseListResponse,
          options: options
        )
      end

      # Permanently delete a course and all of its chapters, lessons, and student
      # progress.
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the course to delete (e.g., "course_XXXXX").
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::CourseDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["courses/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
