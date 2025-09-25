# typed: strong

module Whopsdk
  module Models
    class CourseLessonInteractionListResponse < Whopsdk::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Whopsdk::Models::CourseLessonInteractionListResponse,
            Whopsdk::Internal::AnyHash
          )
        end

      # A list of nodes.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.nilable(Whopsdk::Models::CourseLessonInteractionListItem)
            ]
          )
        )
      end
      attr_accessor :data

      # Information to aid in pagination.
      sig { returns(Whopsdk::PageInfo) }
      attr_reader :page_info

      sig { params(page_info: Whopsdk::PageInfo::OrHash).void }
      attr_writer :page_info

      # The connection type for LessonInteraction.
      sig do
        params(
          data:
            T.nilable(
              T::Array[
                T.nilable(
                  Whopsdk::Models::CourseLessonInteractionListItem::OrHash
                )
              ]
            ),
          page_info: Whopsdk::PageInfo::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of nodes.
        data:,
        # Information to aid in pagination.
        page_info:
      )
      end

      sig do
        override.returns(
          {
            data:
              T.nilable(
                T::Array[
                  T.nilable(Whopsdk::Models::CourseLessonInteractionListItem)
                ]
              ),
            page_info: Whopsdk::PageInfo
          }
        )
      end
      def to_hash
      end
    end
  end
end
