# frozen_string_literal: true

module Whop_sdk
  module Experiments
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists experiments for one account with experiment:read permission. Omit account_id or pass internal to list
      # internal experiments, which requires Whop internal access.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :account_id
      # @option params [Whop_sdk::Types::ExperimentResourceReference, nil] :related_resource
      # @option params [Whop_sdk::Experiments::Types::ListExperimentsRequestStatus, nil] :status
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      # @option params [Whop_sdk::Experiments::Types::ListExperimentsRequestOrder, nil] :order
      # @option params [Whop_sdk::Experiments::Types::ListExperimentsRequestDirection, nil] :direction
      #
      # @example
      #   client.experiments.list
      #
      # @return [Whop_sdk::Experiments::Types::ListExperimentsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["related_resource"] = params[:related_resource] if params.key?(:related_resource)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
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
            path: "experiments",
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
            parsed_response = Whop_sdk::Experiments::Types::ListExperimentsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Creates a draft experiment for the specified account. Use internal for a Whop platform experiment.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Experiments::Types::CreateExperimentsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.experiments.create(
      #     account_id: "internal",
      #     flag_key: "checkout_redesign_v2"
      #   )
      #
      # @return [Whop_sdk::Types::Experiment]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "experiments",
          body: Whop_sdk::Experiments::Types::CreateExperimentsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Experiment.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Evaluates and records an exposure without requiring authentication. When credentials resolve, their
      # authentication method, API key ID, and signed-in user ID are recorded on the exposure event. Pass subject for
      # bucketing identity and account_id for experiment ownership.
      #
      # Pass `flag_key` to check a single flag, or omit it to fetch active flags in the account and related resource
      # scope. Internal anonymous callers may use the `x-whop-anonymous-id` header or `ajs_anonymous_id` cookie;
      # explicit `subject[anonymous_id]` takes precedence.
      #
      # Assignments use exactly the configured `bucket_by`: `subject[user_id]`, `subject[account_id]`, or
      # `subject[anonymous_id]`. Internal user experiments derive identity from the signed-in session. Missing the
      # required identity fails single evaluation and omits the experiment from batch evaluation. Subjects outside all
      # treatment ranges receive control.
      #
      # Pass `subject[account_id]` to enable account-level targeting rules. Pass `properties` as a JSON object to supply
      # the values that `property` targeting conditions match against.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Whop_sdk::Types::ExposuresExperimentsRequestSubject, nil] :subject
      # @option params [Whop_sdk::Types::ExperimentResourceReference, nil] :related_resource
      # @option params [String, nil] :flag_key
      # @option params [String, nil] :account_id
      # @option params [String, nil] :properties
      #
      # @example
      #   client.experiments.exposures
      #
      # @return [Whop_sdk::Experiments::Types::ExposuresExperimentsResponse]
      def exposures(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["subject"] = params[:subject] if params.key?(:subject)
        query_params["related_resource"] = params[:related_resource] if params.key?(:related_resource)
        query_params["flag_key"] = params[:flag_key] if params.key?(:flag_key)
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["properties"] = params[:properties] if params.key?(:properties)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "experiments/exposures",
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
          Whop_sdk::Experiments::Types::ExposuresExperimentsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single experiment or feature flag by its `expt_` id or flag_key handle. Requires the corresponding
      # experiment permission on the owning account, or Whop internal access for internal experiments.
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
      #   client.experiments.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::Experiment]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "experiments/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::Experiment.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates the targeting rules, treatment allocation, metrics, or hypothesis of an existing experiment or feature
      # flag. Weights and metrics can only grow, so enrolled users never change arms and an existing metric is never
      # dropped. Lifecycle moves through the transition endpoints (`activate`, `pause`, `end`), never through this
      # update. Requires the corresponding experiment permission on the owning account, or Whop internal access for
      # internal experiments.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Experiments::Types::UpdateExperimentsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :account_id
      #
      # @example
      #   client.experiments.update(id: "id")
      #
      # @return [Whop_sdk::Types::Experiment]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Experiments::Types::UpdateExperimentsRequest.new(params).to_h
        non_body_param_names = %w[id account_id]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "experiments/#{URI.encode_uri_component(params[:id].to_s)}",
          query: query_params,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Experiment.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Starts (or resumes) an experiment or feature flag so evaluation begins serving it. Activating a draft stamps
      # `started_at`; resuming a paused experiment keeps the original start. Only drafts and paused experiments can be
      # activated. Requires the corresponding experiment permission on the owning account, or Whop internal access for
      # internal experiments.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Experiments::Types::ActivateExperimentsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :account_id
      #
      # @example
      #   client.experiments.activate(id: "id")
      #
      # @return [Whop_sdk::Types::Experiment]
      def activate(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Experiments::Types::ActivateExperimentsRequest.new(params).to_h
        non_body_param_names = %w[id account_id]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "experiments/#{URI.encode_uri_component(params[:id].to_s)}/activate",
          query: query_params,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Experiment.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Concludes the experiment and records required `findings`. Pass `winning_arm` to serve the winning treatment to
      # everyone; omit it when control won. Ended experiments cannot restart, but may be ended again to correct the
      # winner. Requires experiment:manage on the account, or internal access for platform experiments.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Experiments::Types::EndExperimentsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [String, nil] :account_id
      #
      # @example
      #   client.experiments.end_(
      #     id: "id",
      #     findings: "Treatment lifted signups 12%, shipping it to everyone."
      #   )
      #
      # @return [Whop_sdk::Types::Experiment]
      def end_(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Experiments::Types::EndExperimentsRequest.new(params).to_h
        non_body_param_names = %w[id account_id]
        body = request_data.except(*non_body_param_names)

        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "experiments/#{URI.encode_uri_component(params[:id].to_s)}/end",
          query: query_params,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Experiment.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Pauses an active experiment or feature flag: evaluation stops serving it and exposures stop flowing. Assignments
      # are keyed on stable identity, so users return to their original arm when the experiment resumes. Requires the
      # corresponding experiment permission on the owning account, or Whop internal access for internal experiments.
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
      #   client.experiments.pause(id: "id")
      #
      # @return [Whop_sdk::Types::Experiment]
      def pause(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "experiments/#{URI.encode_uri_component(params[:id].to_s)}/pause",
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
          Whop_sdk::Types::Experiment.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
