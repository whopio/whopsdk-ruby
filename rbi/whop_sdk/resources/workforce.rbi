# typed: strong

module WhopSDK
  module Resources
    class Workforce
      # A Workforce Bounty is a paid task posted by an account or user. The reward is
      # held in escrow when the bounty publishes, workers submit proof of completed
      # work, and each accepted submission is paid out until every winner slot fills.
      #
      # Use the Workforce Bounties API to list an account's bounties for reporting or
      # dashboards, list the bounties a user can work or has participated in, and
      # retrieve a single bounty by ID.
      sig { returns(WhopSDK::Resources::Workforce::Bounties) }
      attr_reader :bounties

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
