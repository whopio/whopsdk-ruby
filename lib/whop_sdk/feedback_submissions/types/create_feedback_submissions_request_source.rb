# frozen_string_literal: true

module Whop_sdk
  module FeedbackSubmissions
    module Types
      module CreateFeedbackSubmissionsRequestSource
        extend Whop_sdk::Internal::Types::Enum

        MCP_REPORT_FEEDBACK = "mcp_report_feedback"
        MCP_ASK_QUESTION = "mcp_ask_question"
        CLI_REPORT_FEEDBACK = "cli_report_feedback"
        CLI_ASK_QUESTION = "cli_ask_question"
        AI_CHAT_REPORT_FEEDBACK = "ai_chat_report_feedback"
        AI_CHAT_ASK_QUESTION = "ai_chat_ask_question"
        API_REPORT_FEEDBACK = "api_report_feedback"
        API_ASK_QUESTION = "api_ask_question"
      end
    end
  end
end
