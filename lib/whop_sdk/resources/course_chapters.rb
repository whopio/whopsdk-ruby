# frozen_string_literal: true

module WhopSDK
  module Resources
    class CourseChapters
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CourseChapterCreateParams} for more details.
      #
      # Create a new chapter within a course to organize lessons into sections.
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload create(course_id:, title: nil, request_options: {})
      #
      # @param course_id [String] The unique identifier of the course to create the chapter in (e.g., "course_XXXX
      #
      # @param title [String, nil] The display title of the chapter (e.g., "Module 1: Introduction").
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CourseChapter]
      #
      # @see WhopSDK::Models::CourseChapterCreateParams
      def create(params)
        parsed, options = WhopSDK::CourseChapterCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "course_chapters",
          body: parsed,
          model: WhopSDK::CourseChapter,
          options: options
        )
      end

      # Retrieves the details of an existing course chapter.
      #
      # Required permissions:
      #
      # - `courses:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the chapter to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CourseChapter]
      #
      # @see WhopSDK::Models::CourseChapterRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["course_chapters/%1$s", id],
          model: WhopSDK::CourseChapter,
          options: params[:request_options]
        )
      end

      # Update a chapter's title within a course.
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload update(id, title:, request_options: {})
      #
      # @param id [String] The unique identifier of the chapter to update (e.g., "chap_XXXXX").
      #
      # @param title [String] The new display title of the chapter (e.g., "Module 1: Introduction").
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CourseChapter]
      #
      # @see WhopSDK::Models::CourseChapterUpdateParams
      def update(id, params)
        parsed, options = WhopSDK::CourseChapterUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["course_chapters/%1$s", id],
          body: parsed,
          model: WhopSDK::CourseChapter,
          options: options
        )
      end

      # Returns a paginated list of chapters within a course, ordered by position.
      #
      # Required permissions:
      #
      # - `courses:read`
      #
      # @overload list(course_id:, after: nil, before: nil, first: nil, last: nil, request_options: {})
      #
      # @param course_id [String] The unique identifier of the course to list chapters for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CourseChapterListResponse>]
      #
      # @see WhopSDK::Models::CourseChapterListParams
      def list(params)
        parsed, options = WhopSDK::CourseChapterListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "course_chapters",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::CourseChapterListResponse,
          options: options
        )
      end

      # Permanently delete a chapter and all of its lessons from a course.
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The unique identifier of the chapter to delete (e.g., "chap_XXXXX").
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::CourseChapterDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["course_chapters/%1$s", id],
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
