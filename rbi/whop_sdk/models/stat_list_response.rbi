# typed: strong

module WhopSDK
  module Models
    class StatListResponse < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(WhopSDK::Models::StatListResponse, WhopSDK::Internal::AnyHash)
        end

      # The available metrics.
      sig { returns(T::Array[WhopSDK::Models::StatListResponse::Data]) }
      attr_accessor :data

      sig do
        params(
          data: T::Array[WhopSDK::Models::StatListResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # The available metrics.
        data:
      )
      end

      sig do
        override.returns(
          { data: T::Array[WhopSDK::Models::StatListResponse::Data] }
        )
      end
      def to_hash
      end

      class Data < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::StatListResponse::Data,
              WhopSDK::Internal::AnyHash
            )
          end

        # A short description of what the metric measures.
        sig { returns(String) }
        attr_accessor :description

        # The metric's key. Pass it to GET /stats/{metric} to query its values.
        sig { returns(String) }
        attr_accessor :key

        # Human-readable display name for the metric.
        sig { returns(String) }
        attr_accessor :name

        # The properties you can use with this metric — pass one as a filter
        # (property=value) to narrow the series, or as breakdown_by=property to split it.
        sig { returns(T::Array[String]) }
        attr_accessor :properties

        # How to read the metric's values: count is an integer, currency is a decimal
        # amount, and percent is a number where 1.6 means 1.6%.
        sig do
          returns(WhopSDK::Models::StatListResponse::Data::Unit::TaggedSymbol)
        end
        attr_accessor :unit

        # Snapshot metrics only: the trailing windows you can pass as snapshot_window, for
        # example 30d. Absent on live metrics, which use from/to instead.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :windows

        sig { params(windows: T::Array[String]).void }
        attr_writer :windows

        sig do
          params(
            description: String,
            key: String,
            name: String,
            properties: T::Array[String],
            unit: WhopSDK::Models::StatListResponse::Data::Unit::OrSymbol,
            windows: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # A short description of what the metric measures.
          description:,
          # The metric's key. Pass it to GET /stats/{metric} to query its values.
          key:,
          # Human-readable display name for the metric.
          name:,
          # The properties you can use with this metric — pass one as a filter
          # (property=value) to narrow the series, or as breakdown_by=property to split it.
          properties:,
          # How to read the metric's values: count is an integer, currency is a decimal
          # amount, and percent is a number where 1.6 means 1.6%.
          unit:,
          # Snapshot metrics only: the trailing windows you can pass as snapshot_window, for
          # example 30d. Absent on live metrics, which use from/to instead.
          windows: nil
        )
        end

        sig do
          override.returns(
            {
              description: String,
              key: String,
              name: String,
              properties: T::Array[String],
              unit: WhopSDK::Models::StatListResponse::Data::Unit::TaggedSymbol,
              windows: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # How to read the metric's values: count is an integer, currency is a decimal
        # amount, and percent is a number where 1.6 means 1.6%.
        module Unit
          extend WhopSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, WhopSDK::Models::StatListResponse::Data::Unit)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COUNT =
            T.let(
              :count,
              WhopSDK::Models::StatListResponse::Data::Unit::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              WhopSDK::Models::StatListResponse::Data::Unit::TaggedSymbol
            )
          PERCENT =
            T.let(
              :percent,
              WhopSDK::Models::StatListResponse::Data::Unit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                WhopSDK::Models::StatListResponse::Data::Unit::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
