# typed: strong

module WhopSDK
  module Models
    class AIChatListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::AIChatListParams, WhopSDK::Internal::AnyHash)
        end

      # Returns the elements in the list that come after the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # Only return chats handled by this agent.
      sig do
        returns(T.nilable(WhopSDK::AIChatListParams::AgentIdentifier::OrSymbol))
      end
      attr_reader :agent_identifier

      sig do
        params(
          agent_identifier: WhopSDK::AIChatListParams::AgentIdentifier::OrSymbol
        ).void
      end
      attr_writer :agent_identifier

      # Returns the elements in the list that come before the specified cursor.
      sig { returns(T.nilable(String)) }
      attr_reader :before

      sig { params(before: String).void }
      attr_writer :before

      # Returns the first _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first

      sig { params(first: Integer).void }
      attr_writer :first

      # Returns the last _n_ elements from the list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :last

      sig { params(last: Integer).void }
      attr_writer :last

      # When true, returns only chats with an active cron schedule
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :only_active_crons

      sig { params(only_active_crons: T::Boolean).void }
      attr_writer :only_active_crons

      sig do
        params(
          after: String,
          agent_identifier:
            WhopSDK::AIChatListParams::AgentIdentifier::OrSymbol,
          before: String,
          first: Integer,
          last: Integer,
          only_active_crons: T::Boolean,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Only return chats handled by this agent.
        agent_identifier: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # When true, returns only chats with an active cron schedule
        only_active_crons: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            agent_identifier:
              WhopSDK::AIChatListParams::AgentIdentifier::OrSymbol,
            before: String,
            first: Integer,
            last: Integer,
            only_active_crons: T::Boolean,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Only return chats handled by this agent.
      module AgentIdentifier
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, WhopSDK::AIChatListParams::AgentIdentifier)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GENERAL =
          T.let(
            :general,
            WhopSDK::AIChatListParams::AgentIdentifier::TaggedSymbol
          )
        SUPPORT =
          T.let(
            :support,
            WhopSDK::AIChatListParams::AgentIdentifier::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[WhopSDK::AIChatListParams::AgentIdentifier::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
