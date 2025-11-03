# frozen_string_literal: true

module WhopSDK
  module Resources
    class CourseStudents
      # Retrieves a course student by interaction ID
      #
      # Required permissions:
      #
      # - `courses:read`
      # - `course_analytics:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the course student interaction
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::CourseStudentRetrieveResponse]
      #
      # @see WhopSDK::Models::CourseStudentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["course_students/%1$s", id],
          model: WhopSDK::Models::CourseStudentRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists students for a course
      #
      # Required permissions:
      #
      # - `courses:read`
      # - `course_analytics:read`
      #
      # @overload list(course_id:, after: nil, before: nil, first: nil, keyword: nil, last: nil, request_options: {})
      #
      # @param course_id [String] The ID of the course
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param keyword [String, nil] Filter students by name - returns students whose names match the keyword
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CourseStudentListResponse>]
      #
      # @see WhopSDK::Models::CourseStudentListParams
      def list(params)
        parsed, options = WhopSDK::CourseStudentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "course_students",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::CourseStudentListResponse,
          options: options
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
