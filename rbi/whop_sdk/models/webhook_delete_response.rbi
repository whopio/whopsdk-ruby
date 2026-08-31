# typed: strong

module WhopSDK
  module Models
    class WebhookDeleteResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::Models::WebhookDeleteResponse,
            WhopSDK::Internal::AnyHash
          )
        end

      # The ID of the deleted resource.
      sig { returns(String) }
      attr_accessor :id

      # Always `true`: the resource was deleted.
      sig { returns(T::Boolean) }
      attr_accessor :deleted

      sig { params(id: String, deleted: T::Boolean).returns(T.attached_class) }
      def self.new(
        # The ID of the deleted resource.
        id:,
        # Always `true`: the resource was deleted.
        deleted:
      )
      end

      sig { override.returns({ id: String, deleted: T::Boolean }) }
      def to_hash
      end
    end
  end
end
