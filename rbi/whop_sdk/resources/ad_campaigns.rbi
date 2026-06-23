# typed: strong

module WhopSDK
  module Resources
    class AdCampaigns
      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
