# frozen_string_literal: true

module Whop_sdk
  module Messages
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      # @param base_url [String, nil]
      # @param environment [Hash[Symbol, String], nil]
      #
      # @return [void]
      def initialize(client:, base_url: nil, environment: nil)
        @client = client
        @base_url = base_url
        @environment = environment
      end

      # Lists messages in a channel. Existing public message and channel IDs are preserved. For reconnect
      # synchronization, use inclusive updated_after with include_deleted=true; results use ascending change order.
      # Follow the returned cursors and replace cached messages by ID, including when updated_at is unchanged. The
      # returned updated_at is the stored message update time; reaction changes only affect synchronization ordering.
      # Deleted entries contain identity and timestamps with their content redacted. To jump into history, specify
      # channel_id and one around anchor; results use ascending creation-time order. For older messages in chronological
      # order, use before_message_id with last and direction=asc; for newer messages, use after_message_id with first
      # and direction=asc. Do not supply order or direction with updated_after or an around anchor. Keep message-ID
      # filters when continuing with cursors. For around queries, omit the around anchor and continue with
      # direction=asc.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :channel_id
      # @option params [String, nil] :replying_to_message_id
      # @option params [Boolean, nil] :pinned
      # @option params [Boolean, nil] :include_deleted
      # @option params [String, nil] :created_after
      # @option params [String, nil] :created_before
      # @option params [String, nil] :updated_after
      # @option params [String, nil] :before_message_id
      # @option params [String, nil] :after_message_id
      # @option params [String, nil] :around_message_id
      # @option params [String, nil] :around_timestamp
      # @option params [Whop_sdk::Messages::Types::ListMessagesRequestOrder, nil] :order
      # @option params [Whop_sdk::Messages::Types::ListMessagesRequestDirection, nil] :direction
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      #
      # @example
      #   client.messages.list(channel_id: "channel_id")
      #
      # @return [Whop_sdk::Messages::Types::ListMessagesResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["channel_id"] = params[:channel_id] if params.key?(:channel_id)
        query_params["replying_to_message_id"] = params[:replying_to_message_id] if params.key?(:replying_to_message_id)
        query_params["pinned"] = params[:pinned] if params.key?(:pinned)
        query_params["include_deleted"] = params[:include_deleted] if params.key?(:include_deleted)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["updated_after"] = params[:updated_after] if params.key?(:updated_after)
        query_params["before_message_id"] = params[:before_message_id] if params.key?(:before_message_id)
        query_params["after_message_id"] = params[:after_message_id] if params.key?(:after_message_id)
        query_params["around_message_id"] = params[:around_message_id] if params.key?(:around_message_id)
        query_params["around_timestamp"] = params[:around_timestamp] if params.key?(:around_timestamp)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "messages",
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
            parsed_response = (response.body.to_s.empty? ? nil : Whop_sdk::Messages::Types::ListMessagesResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Sends a Markdown message as the authenticated user or app agent. Channel access, posting restrictions,
      # moderation, and delivery follow the existing chat services. Use Idempotency-Key to safely retry a send. The
      # response and realtime message use the same message ID. Custom author presentation and embeds are read-only.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Messages::Types::CreateMessagesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.messages.create(
      #     channel_id: "feed_xxxxxxxxxxxxxxxxxxxxxx",
      #     content: "New **message**"
      #   )
      #
      # @return [Whop_sdk::Types::ChatMessage]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "messages",
          body: Whop_sdk::Messages::Types::CreateMessagesRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChatMessage.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a live message from an accessible channel. Use list synchronization to retrieve deletion entries.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.messages.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::ChatMessage]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "GET",
          path: "messages/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChatMessage.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes a message as its author or a permitted moderator. Deleted messages remain available as redacted entries
      # through list synchronization.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.messages.delete(id: "id")
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "DELETE",
          path: "messages/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Updates the author's message. Use the pin and unpin actions to change its pin state. Omitted fields are
      # preserved; attachment and preview collections replace their previous values.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Messages::Types::UpdateMessagesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.messages.update(id: "id")
      #
      # @return [Whop_sdk::Types::ChatMessage]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Messages::Types::UpdateMessagesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "PATCH",
          path: "messages/#{URI.encode_uri_component(params[:id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChatMessage.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Pins a message in its channel. Requires the channel's pin permission.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.messages.pin(id: "id")
      #
      # @return [Whop_sdk::Types::ChatMessage]
      def pin(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "messages/#{URI.encode_uri_component(params[:id].to_s)}/pin",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChatMessage.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Add your emoji reaction to a message. Reacting again with the same emoji changes nothing.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Messages::Types::ReactMessagesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.messages.react(
      #     id: "id",
      #     emoji: "❤️"
      #   )
      #
      # @return [Whop_sdk::Types::ChatMessage]
      def react(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Messages::Types::ReactMessagesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "messages/#{URI.encode_uri_component(params[:id].to_s)}/react",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChatMessage.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # List who reacted to a message, newest first. Optionally filter by emoji.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      # @option params [String, nil] :emoji
      #
      # @example
      #   client.messages.list_reactions(id: "id")
      #
      # @return [Whop_sdk::Messages::Types::ListReactionsMessagesResponse]
      def list_reactions(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["emoji"] = params[:emoji] if params.key?(:emoji)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "messages/#{URI.encode_uri_component(params[:id].to_s)}/reactions",
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
            parsed_response = (response.body.to_s.empty? ? nil : Whop_sdk::Messages::Types::ListReactionsMessagesResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Unpins a message in its channel. Requires the channel's pin permission.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.messages.unpin(id: "id")
      #
      # @return [Whop_sdk::Types::ChatMessage]
      def unpin(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "messages/#{URI.encode_uri_component(params[:id].to_s)}/unpin",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChatMessage.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Remove your emoji reaction from a message. Removing a reaction you have not added changes nothing.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Messages::Types::UnreactMessagesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.messages.unreact(
      #     id: "id",
      #     emoji: "❤️"
      #   )
      #
      # @return [Whop_sdk::Types::ChatMessage]
      def unreact(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Messages::Types::UnreactMessagesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "messages/#{URI.encode_uri_component(params[:id].to_s)}/unreact",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChatMessage.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Vote for one option on a message poll. Each user can vote once per poll.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Messages::Types::VoteMessagesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.messages.vote(
      #     id: "id",
      #     poll_option_id: "2"
      #   )
      #
      # @return [Whop_sdk::Types::ChatMessage]
      def vote(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Messages::Types::VoteMessagesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "messages/#{URI.encode_uri_component(params[:id].to_s)}/vote",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChatMessage.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
