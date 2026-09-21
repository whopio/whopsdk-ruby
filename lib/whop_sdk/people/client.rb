# frozen_string_literal: true

module Whop_sdk
  module People
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists the people (visitors and customers) of an account: the identity-linked person profiles aggregated from
      # every pixel, payment, and platform event — identities, purchases and LTV, geo/device profile, traffic sources,
      # and first/last marketing touches.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [String, nil] :query
      # @option params [String, nil] :source
      # @option params [Whop_sdk::People::Types::ListPeopleRequestAttributionModel, nil] :attribution_model
      # @option params [String, nil] :event_name
      # @option params [String, nil] :custom_event
      # @option params [Integer, nil] :event_within_days
      # @option params [String, nil] :from
      # @option params [String, nil] :to
      # @option params [String, nil] :event_from
      # @option params [String, nil] :event_to
      # @option params [String, nil] :audience_id
      # @option params [String, nil] :user_id
      # @option params [String, nil] :email
      # @option params [String, nil] :phone
      # @option params [String, nil] :country
      # @option params [Boolean, nil] :has_purchased
      # @option params [Boolean, nil] :contactable
      # @option params [Integer, nil] :first_seen_within_days
      # @option params [Integer, nil] :last_seen_within_days
      # @option params [String, nil] :first_seen_after
      # @option params [String, nil] :first_seen_before
      # @option params [String, nil] :last_seen_after
      # @option params [String, nil] :last_seen_before
      # @option params [Integer, nil] :ltv_gt
      # @option params [Integer, nil] :ltv_gte
      # @option params [Integer, nil] :ltv_lt
      # @option params [Integer, nil] :ltv_lte
      # @option params [Integer, nil] :aov_gt
      # @option params [Integer, nil] :aov_gte
      # @option params [Integer, nil] :aov_lt
      # @option params [Integer, nil] :aov_lte
      # @option params [Integer, nil] :purchase_count_gt
      # @option params [Integer, nil] :purchase_count_gte
      # @option params [Integer, nil] :purchase_count_lt
      # @option params [Integer, nil] :purchase_count_lte
      # @option params [Integer, nil] :event_count_gt
      # @option params [Integer, nil] :event_count_gte
      # @option params [Integer, nil] :event_count_lt
      # @option params [Integer, nil] :event_count_lte
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [String, nil] :before
      # @option params [Whop_sdk::People::Types::ListPeopleRequestOrder, nil] :order
      # @option params [Whop_sdk::People::Types::ListPeopleRequestDirection, nil] :direction
      #
      # @example
      #   client.people.list(
      #     source: ["direct"],
      #     event_name: ["payment.completed"]
      #   )
      #
      # @return [Whop_sdk::People::Types::ListPeopleResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["query"] = params[:query] if params.key?(:query)
        query_params["source"] = params[:source] if params.key?(:source)
        query_params["attribution_model"] = params[:attribution_model] if params.key?(:attribution_model)
        query_params["event_name"] = params[:event_name] if params.key?(:event_name)
        query_params["custom_event"] = params[:custom_event] if params.key?(:custom_event)
        query_params["event_within_days"] = params[:event_within_days] if params.key?(:event_within_days)
        query_params["from"] = params[:from] if params.key?(:from)
        query_params["to"] = params[:to] if params.key?(:to)
        query_params["event_from"] = params[:event_from] if params.key?(:event_from)
        query_params["event_to"] = params[:event_to] if params.key?(:event_to)
        query_params["audience_id"] = params[:audience_id] if params.key?(:audience_id)
        query_params["user_id"] = params[:user_id] if params.key?(:user_id)
        query_params["email"] = params[:email] if params.key?(:email)
        query_params["phone"] = params[:phone] if params.key?(:phone)
        query_params["country"] = params[:country] if params.key?(:country)
        query_params["has_purchased"] = params[:has_purchased] if params.key?(:has_purchased)
        query_params["contactable"] = params[:contactable] if params.key?(:contactable)
        query_params["first_seen_within_days"] = params[:first_seen_within_days] if params.key?(:first_seen_within_days)
        query_params["last_seen_within_days"] = params[:last_seen_within_days] if params.key?(:last_seen_within_days)
        query_params["first_seen_after"] = params[:first_seen_after] if params.key?(:first_seen_after)
        query_params["first_seen_before"] = params[:first_seen_before] if params.key?(:first_seen_before)
        query_params["last_seen_after"] = params[:last_seen_after] if params.key?(:last_seen_after)
        query_params["last_seen_before"] = params[:last_seen_before] if params.key?(:last_seen_before)
        query_params["ltv_gt"] = params[:ltv_gt] if params.key?(:ltv_gt)
        query_params["ltv_gte"] = params[:ltv_gte] if params.key?(:ltv_gte)
        query_params["ltv_lt"] = params[:ltv_lt] if params.key?(:ltv_lt)
        query_params["ltv_lte"] = params[:ltv_lte] if params.key?(:ltv_lte)
        query_params["aov_gt"] = params[:aov_gt] if params.key?(:aov_gt)
        query_params["aov_gte"] = params[:aov_gte] if params.key?(:aov_gte)
        query_params["aov_lt"] = params[:aov_lt] if params.key?(:aov_lt)
        query_params["aov_lte"] = params[:aov_lte] if params.key?(:aov_lte)
        query_params["purchase_count_gt"] = params[:purchase_count_gt] if params.key?(:purchase_count_gt)
        query_params["purchase_count_gte"] = params[:purchase_count_gte] if params.key?(:purchase_count_gte)
        query_params["purchase_count_lt"] = params[:purchase_count_lt] if params.key?(:purchase_count_lt)
        query_params["purchase_count_lte"] = params[:purchase_count_lte] if params.key?(:purchase_count_lte)
        query_params["event_count_gt"] = params[:event_count_gt] if params.key?(:event_count_gt)
        query_params["event_count_gte"] = params[:event_count_gte] if params.key?(:event_count_gte)
        query_params["event_count_lt"] = params[:event_count_lt] if params.key?(:event_count_lt)
        query_params["event_count_lte"] = params[:event_count_lte] if params.key?(:event_count_lte)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "people",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = Whop_sdk::People::Types::ListPeopleResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Retrieves one person for an account. The identifier can be a person ID (prefixed `prsn_`), a user ID (prefixed
      # `user_`), an email address, or a phone number — merged people resolve to the surviving profile.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :account_id
      #
      # @example
      #   client.people.retrieve(id: "id")
      #
      # @return [Whop_sdk::People::Types::RetrievePeopleResponse]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "people/#{URI.encode_uri_component(params[:id].to_s)}",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::People::Types::RetrievePeopleResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
