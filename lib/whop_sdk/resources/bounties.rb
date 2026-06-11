# frozen_string_literal: true

module WhopSDK
  module Resources
    # Bounties
    class Bounties
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::BountyCreateParams} for more details.
      #
      # Create a new workforce bounty by funding a dedicated bounty pool.
      #
      # Required permissions:
      #
      # - `bounty:create`
      #
      # @overload create(base_unit_amount:, currency:, description:, title:, accepted_submissions_limit: nil, allowed_country_codes: nil, business_goal_type: nil, experience_id: nil, origin_account_id: nil, post_markdown_content: nil, post_title: nil, request_options: {})
      #
      # @param base_unit_amount [Float] The amount paid to each approved submission. The total bounty pool funded is thi
      #
      # @param currency [Symbol, WhopSDK::Models::Currency] The currency for the bounty pool funding amount.
      #
      # @param description [String] The description of the bounty.
      #
      # @param title [String] The title of the bounty.
      #
      # @param accepted_submissions_limit [Integer, nil] The number of submissions that can be approved before the bounty closes. Default
      #
      # @param allowed_country_codes [Array<String>, nil] The ISO3166 country codes where this bounty should be visible. Empty means globa
      #
      # @param business_goal_type [Symbol, WhopSDK::Models::BountyCreateParams::BusinessGoalType, nil] What the poster is trying to accomplish with a workforce bounty. Used for produc
      #
      # @param experience_id [String, nil] An optional experience to scope the bounty to.
      #
      # @param origin_account_id [String, nil] The user (user*\*) or company (biz*\*) tag whose balance funds this bounty pool.
      # D
      #
      # @param post_markdown_content [String, nil] Optional markdown body for the anchor forum post. Falls back to the bounty descr
      #
      # @param post_title [String, nil] Optional title for the anchor forum post. Falls back to the bounty title when om
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::BountyCreateResponse]
      #
      # @see WhopSDK::Models::BountyCreateParams
      def create(params)
        parsed, options = WhopSDK::BountyCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "bounties",
          body: parsed,
          model: WhopSDK::Models::BountyCreateResponse,
          options: options
        )
      end

      # Retrieves a workforce bounty for the current authenticated user.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the workforce bounty to retrieve.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::BountyRetrieveResponse]
      #
      # @see WhopSDK::Models::BountyRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["bounties/%1$s", id],
          model: WhopSDK::Models::BountyRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::BountyListParams} for more details.
      #
      # Returns a paginated list of workforce bounties. When experienceId is provided,
      # returns bounties scoped to that experience. When omitted, returns bounties with
      # no experience.
      #
      # @overload list(after: nil, before: nil, direction: nil, experience_id: nil, first: nil, last: nil, status: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param experience_id [String, nil] The experience to list bounties for. When omitted, returns bounties with no expe
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param status [Symbol, WhopSDK::Models::BountyListParams::Status, nil] The available bounty statuses to choose from.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::BountyListResponse>]
      #
      # @see WhopSDK::Models::BountyListParams
      def list(params = {})
        parsed, options = WhopSDK::BountyListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "bounties",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::BountyListResponse,
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
