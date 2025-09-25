# typed: strong

module Whopsdk
  module Internal
    class CursorPage
      include Whopsdk::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(PageInfo) }
      attr_accessor :page_info

      # @api private
      sig { returns(String) }
      def inspect
      end

      class PageInfo < Whopsdk::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(PageInfo, Whopsdk::Internal::AnyHash) }

        sig { returns(T.nilable(String)) }
        attr_reader :end_cursor

        sig { params(end_cursor: String).void }
        attr_writer :end_cursor

        sig { params(end_cursor: String).returns(T.attached_class) }
        def self.new(end_cursor: nil)
        end

        sig { override.returns({ end_cursor: String }) }
        def to_hash
        end
      end
    end
  end
end
