# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Apps#logs
    class AppLogsResponse < WhopSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<WhopSDK::Models::AppLogsResponse::Data>]
      required :data, -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::AppLogsResponse::Data] }

      # @!attribute page_info
      #
      #   @return [WhopSDK::Models::AppLogsResponse::PageInfo]
      required :page_info, -> { WhopSDK::Models::AppLogsResponse::PageInfo }

      # @!method initialize(data:, page_info:)
      #   @param data [Array<WhopSDK::Models::AppLogsResponse::Data>]
      #   @param page_info [WhopSDK::Models::AppLogsResponse::PageInfo]

      class Data < WhopSDK::Internal::Type::BaseModel
        # @!attribute app_build_id
        #
        #   @return [String]
        required :app_build_id, String

        # @!attribute app_id
        #
        #   @return [String]
        required :app_id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute level
        #
        #   @return [String]
        required :level, String

        # @!attribute message
        #
        #   @return [String]
        required :message, String

        # @!attribute request_id
        #
        #   @return [String]
        required :request_id, String

        # @!attribute source
        #
        #   @return [Symbol, WhopSDK::Models::AppLogsResponse::Data::Source]
        required :source, enum: -> { WhopSDK::Models::AppLogsResponse::Data::Source }

        # @!attribute cpu_time_ms
        #
        #   @return [Integer, nil]
        optional :cpu_time_ms, Integer

        # @!attribute outcome
        #
        #   @return [String, nil]
        optional :outcome, String, nil?: true

        # @!attribute request_method
        #
        #   @return [String, nil]
        optional :request_method, String, nil?: true

        # @!attribute request_path
        #
        #   @return [String, nil]
        optional :request_path, String, nil?: true

        # @!attribute response_status
        #
        #   @return [Integer, nil]
        optional :response_status, Integer, nil?: true

        # @!attribute stack
        #
        #   @return [String, nil]
        optional :stack, String, nil?: true

        # @!attribute truncated
        #
        #   @return [Boolean, nil]
        optional :truncated, WhopSDK::Internal::Type::Boolean

        # @!attribute wall_time_ms
        #
        #   @return [Integer, nil]
        optional :wall_time_ms, Integer

        # @!method initialize(app_build_id:, app_id:, created_at:, level:, message:, request_id:, source:, cpu_time_ms: nil, outcome: nil, request_method: nil, request_path: nil, response_status: nil, stack: nil, truncated: nil, wall_time_ms: nil)
        #   @param app_build_id [String]
        #   @param app_id [String]
        #   @param created_at [Time]
        #   @param level [String]
        #   @param message [String]
        #   @param request_id [String]
        #   @param source [Symbol, WhopSDK::Models::AppLogsResponse::Data::Source]
        #   @param cpu_time_ms [Integer]
        #   @param outcome [String, nil]
        #   @param request_method [String, nil]
        #   @param request_path [String, nil]
        #   @param response_status [Integer, nil]
        #   @param stack [String, nil]
        #   @param truncated [Boolean]
        #   @param wall_time_ms [Integer]

        # @see WhopSDK::Models::AppLogsResponse::Data#source
        module Source
          extend WhopSDK::Internal::Type::Enum

          CONSOLE = :console
          EXCEPTION = :exception
          REQUEST = :request

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see WhopSDK::Models::AppLogsResponse#page_info
      class PageInfo < WhopSDK::Internal::Type::BaseModel
        # @!attribute has_next_page
        #
        #   @return [Boolean]
        required :has_next_page, WhopSDK::Internal::Type::Boolean

        # @!attribute has_previous_page
        #
        #   @return [Boolean]
        required :has_previous_page, WhopSDK::Internal::Type::Boolean

        # @!attribute end_cursor
        #
        #   @return [String, nil]
        optional :end_cursor, String, nil?: true

        # @!attribute start_cursor
        #
        #   @return [String, nil]
        optional :start_cursor, String, nil?: true

        # @!method initialize(has_next_page:, has_previous_page:, end_cursor: nil, start_cursor: nil)
        #   @param has_next_page [Boolean]
        #   @param has_previous_page [Boolean]
        #   @param end_cursor [String, nil]
        #   @param start_cursor [String, nil]
      end
    end
  end
end
