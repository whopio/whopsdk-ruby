# frozen_string_literal: true

module WhopSDK
  module Resources
    class Courses
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CourseCreateParams} for more details.
      #
      # Creates a new course module in an experience
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload create(experience_id:, title:, certificate_after_completion_enabled: nil, order: nil, require_completing_lessons_in_order: nil, tagline: nil, thumbnail: nil, visibility: nil, request_options: {})
      #
      # @param experience_id [String] The ID of the experience to create the course in
      #
      # @param title [String] The title of the course
      #
      # @param certificate_after_completion_enabled [Boolean, nil] Whether the course will award its students a PDF certificate after completing al
      #
      # @param order [String, nil] The decimal order position of the course within its experience. If not provided,
      #
      # @param require_completing_lessons_in_order [Boolean, nil] Whether the course requires students to complete the previous lesson before movi
      #
      # @param tagline [String, nil] The tagline of the course
      #
      # @param thumbnail [WhopSDK::Models::CourseCreateParams::Thumbnail, nil] The thumbnail for the course in png, jpeg, or gif format
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

      # Retrieves a course by ID
      #
      # Required permissions:
      #
      # - `courses:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the course
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
      # Updates a course
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload update(id, certificate_after_completion_enabled: nil, chapters: nil, description: nil, language: nil, order: nil, require_completing_lessons_in_order: nil, tagline: nil, thumbnail: nil, title: nil, visibility: nil, request_options: {})
      #
      # @param id [String] The ID of the course to update
      #
      # @param certificate_after_completion_enabled [Boolean, nil] Whether the course will award its students a PDF certificate after completing al
      #
      # @param chapters [Array<WhopSDK::Models::CourseUpdateParams::Chapter>, nil] The chapters and lessons to update
      #
      # @param description [String, nil] A short description of the course
      #
      # @param language [Symbol, WhopSDK::Models::Languages, nil] The available languages for a course
      #
      # @param order [String, nil] The decimal order position of the course within its experience. Use fractional v
      #
      # @param require_completing_lessons_in_order [Boolean, nil] Whether the course requires students to complete the previous lesson before movi
      #
      # @param tagline [String, nil] A short tagline for the course
      #
      # @param thumbnail [WhopSDK::Models::CourseUpdateParams::Thumbnail, nil] The thumbnail for the course in png, jpeg, or gif format
      #
      # @param title [String, nil] The title of the course
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

      # Lists courses for an experience or company
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
      # @param company_id [String, nil] The ID of the company
      #
      # @param experience_id [String, nil] The ID of the experience
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
        @client.request(
          method: :get,
          path: "courses",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::CourseListResponse,
          options: options
        )
      end

      # Deletes a course
      #
      # Required permissions:
      #
      # - `courses:update`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the course to delete
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
