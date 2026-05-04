# typed: strong

module WhopSDK
  module Models
    # Root schema description showing available nodes, views, and metrics.
    module StatDescribeResponse
      extend WhopSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.nilable(
            T.any(
              WhopSDK::Models::StatDescribeResponse::DescribeRoot,
              WhopSDK::Models::StatDescribeResponse::DescribeNode,
              WhopSDK::Models::StatDescribeResponse::DescribeMetric,
              WhopSDK::Models::StatDescribeResponse::DescribeView
            )
          )
        end

      class DescribeRoot < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::StatDescribeResponse::DescribeRoot,
              WhopSDK::Internal::AnyHash
            )
          end

        # Debug information.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::StatDescribeResponse::DescribeRoot::Debug
            )
          )
        end
        attr_reader :debug

        sig do
          params(
            debug:
              T.nilable(
                WhopSDK::Models::StatDescribeResponse::DescribeRoot::Debug::OrHash
              )
          ).void
        end
        attr_writer :debug

        # Available metrics.
        sig do
          returns(
            T::Array[
              WhopSDK::Models::StatDescribeResponse::DescribeRoot::Metric
            ]
          )
        end
        attr_accessor :metrics

        # Available root nodes.
        sig { returns(T::Array[String]) }
        attr_accessor :nodes

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # Available API resource views.
        sig { returns(T::Array[String]) }
        attr_accessor :views

        # Root schema description showing available nodes, views, and metrics.
        sig do
          params(
            debug:
              T.nilable(
                WhopSDK::Models::StatDescribeResponse::DescribeRoot::Debug::OrHash
              ),
            metrics:
              T::Array[
                WhopSDK::Models::StatDescribeResponse::DescribeRoot::Metric::OrHash
              ],
            nodes: T::Array[String],
            views: T::Array[String],
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Debug information.
          debug:,
          # Available metrics.
          metrics:,
          # Available root nodes.
          nodes:,
          # Available API resource views.
          views:,
          # The typename of this object
          typename: :DescribeRoot
        )
        end

        sig do
          override.returns(
            {
              debug:
                T.nilable(
                  WhopSDK::Models::StatDescribeResponse::DescribeRoot::Debug
                ),
              metrics:
                T::Array[
                  WhopSDK::Models::StatDescribeResponse::DescribeRoot::Metric
                ],
              nodes: T::Array[String],
              typename: Symbol,
              views: T::Array[String]
            }
          )
        end
        def to_hash
        end

        class Debug < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::StatDescribeResponse::DescribeRoot::Debug,
                WhopSDK::Internal::AnyHash
              )
            end

          # Unique request identifier for debugging.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_id

          # Debug information.
          sig do
            params(request_id: T.nilable(String)).returns(T.attached_class)
          end
          def self.new(
            # Unique request identifier for debugging.
            request_id:
          )
          end

          sig { override.returns({ request_id: T.nilable(String) }) }
          def to_hash
          end
        end

        class Metric < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::StatDescribeResponse::DescribeRoot::Metric,
                WhopSDK::Internal::AnyHash
              )
            end

          # The metric name.
          sig { returns(String) }
          attr_accessor :name

          # The node path this metric operates on.
          sig { returns(String) }
          attr_accessor :node_path

          # Query engines that support this metric.
          sig { returns(T::Array[String]) }
          attr_accessor :supported_engines

          # A metric available for querying.
          sig do
            params(
              name: String,
              node_path: String,
              supported_engines: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The metric name.
            name:,
            # The node path this metric operates on.
            node_path:,
            # Query engines that support this metric.
            supported_engines:
          )
          end

          sig do
            override.returns(
              {
                name: String,
                node_path: String,
                supported_engines: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end
      end

      class DescribeNode < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::StatDescribeResponse::DescribeNode,
              WhopSDK::Internal::AnyHash
            )
          end

        # Available associations or child paths.
        sig do
          returns(
            T::Array[
              WhopSDK::Models::StatDescribeResponse::DescribeNode::Association
            ]
          )
        end
        attr_accessor :associations

        # Available columns.
        sig { returns(T::Array[String]) }
        attr_accessor :columns

        # Debug information.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::StatDescribeResponse::DescribeNode::Debug
            )
          )
        end
        attr_reader :debug

        sig do
          params(
            debug:
              T.nilable(
                WhopSDK::Models::StatDescribeResponse::DescribeNode::Debug::OrHash
              )
          ).void
        end
        attr_writer :debug

        # The query engine being used.
        sig { returns(String) }
        attr_accessor :engine

        # Available metrics for this node.
        sig do
          returns(
            T::Array[
              WhopSDK::Models::StatDescribeResponse::DescribeNode::Metric
            ]
          )
        end
        attr_accessor :metrics

        # The node path being described.
        sig { returns(String) }
        attr_accessor :node

        # Sample data rows.
        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_accessor :sample

        # Columns that can be used for sorting.
        sig { returns(T::Array[String]) }
        attr_accessor :sortable_columns

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # Description of a node (model) including its columns and associations.
        sig do
          params(
            associations:
              T::Array[
                WhopSDK::Models::StatDescribeResponse::DescribeNode::Association::OrHash
              ],
            columns: T::Array[String],
            debug:
              T.nilable(
                WhopSDK::Models::StatDescribeResponse::DescribeNode::Debug::OrHash
              ),
            engine: String,
            metrics:
              T::Array[
                WhopSDK::Models::StatDescribeResponse::DescribeNode::Metric::OrHash
              ],
            node: String,
            sample: T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
            sortable_columns: T::Array[String],
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Available associations or child paths.
          associations:,
          # Available columns.
          columns:,
          # Debug information.
          debug:,
          # The query engine being used.
          engine:,
          # Available metrics for this node.
          metrics:,
          # The node path being described.
          node:,
          # Sample data rows.
          sample:,
          # Columns that can be used for sorting.
          sortable_columns:,
          # The typename of this object
          typename: :DescribeNode
        )
        end

        sig do
          override.returns(
            {
              associations:
                T::Array[
                  WhopSDK::Models::StatDescribeResponse::DescribeNode::Association
                ],
              columns: T::Array[String],
              debug:
                T.nilable(
                  WhopSDK::Models::StatDescribeResponse::DescribeNode::Debug
                ),
              engine: String,
              metrics:
                T::Array[
                  WhopSDK::Models::StatDescribeResponse::DescribeNode::Metric
                ],
              node: String,
              sample: T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
              sortable_columns: T::Array[String],
              typename: Symbol
            }
          )
        end
        def to_hash
        end

        class Association < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::StatDescribeResponse::DescribeNode::Association,
                WhopSDK::Internal::AnyHash
              )
            end

          # The event name (for event type).
          sig { returns(T.nilable(String)) }
          attr_accessor :event_name

          # The associated model class name (for model associations).
          sig { returns(T.nilable(String)) }
          attr_accessor :model

          # The association name.
          sig { returns(String) }
          attr_accessor :name

          # The full path (for event associations).
          sig { returns(T.nilable(String)) }
          attr_accessor :path

          # The type (belongs_to, has_many, has_one, event, namespace).
          sig { returns(String) }
          attr_accessor :type

          # An association or child path available for navigation.
          sig do
            params(
              event_name: T.nilable(String),
              model: T.nilable(String),
              name: String,
              path: T.nilable(String),
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The event name (for event type).
            event_name:,
            # The associated model class name (for model associations).
            model:,
            # The association name.
            name:,
            # The full path (for event associations).
            path:,
            # The type (belongs_to, has_many, has_one, event, namespace).
            type:
          )
          end

          sig do
            override.returns(
              {
                event_name: T.nilable(String),
                model: T.nilable(String),
                name: String,
                path: T.nilable(String),
                type: String
              }
            )
          end
          def to_hash
          end
        end

        class Debug < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::StatDescribeResponse::DescribeNode::Debug,
                WhopSDK::Internal::AnyHash
              )
            end

          # Unique request identifier for debugging.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_id

          # Debug information.
          sig do
            params(request_id: T.nilable(String)).returns(T.attached_class)
          end
          def self.new(
            # Unique request identifier for debugging.
            request_id:
          )
          end

          sig { override.returns({ request_id: T.nilable(String) }) }
          def to_hash
          end
        end

        class Metric < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::StatDescribeResponse::DescribeNode::Metric,
                WhopSDK::Internal::AnyHash
              )
            end

          # The metric name.
          sig { returns(String) }
          attr_accessor :name

          # The node path this metric operates on.
          sig { returns(String) }
          attr_accessor :node_path

          # Query engines that support this metric.
          sig { returns(T::Array[String]) }
          attr_accessor :supported_engines

          # A metric available for querying.
          sig do
            params(
              name: String,
              node_path: String,
              supported_engines: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The metric name.
            name:,
            # The node path this metric operates on.
            node_path:,
            # Query engines that support this metric.
            supported_engines:
          )
          end

          sig do
            override.returns(
              {
                name: String,
                node_path: String,
                supported_engines: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end
      end

      class DescribeMetric < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::StatDescribeResponse::DescribeMetric,
              WhopSDK::Internal::AnyHash
            )
          end

        # Columns that can be used for breakdowns.
        sig { returns(T::Array[String]) }
        attr_accessor :breakdownable_columns

        # Debug information.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::StatDescribeResponse::DescribeMetric::Debug
            )
          )
        end
        attr_reader :debug

        sig do
          params(
            debug:
              T.nilable(
                WhopSDK::Models::StatDescribeResponse::DescribeMetric::Debug::OrHash
              )
          ).void
        end
        attr_writer :debug

        # The query engine being used.
        sig { returns(String) }
        attr_accessor :engine

        # Columns that can be used for filtering.
        sig { returns(T::Array[String]) }
        attr_accessor :filterable_columns

        # The metric name.
        sig { returns(String) }
        attr_accessor :metric

        # The node path this metric operates on.
        sig { returns(String) }
        attr_accessor :node

        # The generated SQL query.
        sig { returns(T.nilable(String)) }
        attr_accessor :sql

        # Query engines that support this metric.
        sig { returns(T::Array[String]) }
        attr_accessor :supported_engines

        # The timestamp column used for time filtering.
        sig { returns(String) }
        attr_accessor :timestamp_column

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # Description of a metric including its configuration and SQL.
        sig do
          params(
            breakdownable_columns: T::Array[String],
            debug:
              T.nilable(
                WhopSDK::Models::StatDescribeResponse::DescribeMetric::Debug::OrHash
              ),
            engine: String,
            filterable_columns: T::Array[String],
            metric: String,
            node: String,
            sql: T.nilable(String),
            supported_engines: T::Array[String],
            timestamp_column: String,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Columns that can be used for breakdowns.
          breakdownable_columns:,
          # Debug information.
          debug:,
          # The query engine being used.
          engine:,
          # Columns that can be used for filtering.
          filterable_columns:,
          # The metric name.
          metric:,
          # The node path this metric operates on.
          node:,
          # The generated SQL query.
          sql:,
          # Query engines that support this metric.
          supported_engines:,
          # The timestamp column used for time filtering.
          timestamp_column:,
          # The typename of this object
          typename: :DescribeMetric
        )
        end

        sig do
          override.returns(
            {
              breakdownable_columns: T::Array[String],
              debug:
                T.nilable(
                  WhopSDK::Models::StatDescribeResponse::DescribeMetric::Debug
                ),
              engine: String,
              filterable_columns: T::Array[String],
              metric: String,
              node: String,
              sql: T.nilable(String),
              supported_engines: T::Array[String],
              timestamp_column: String,
              typename: Symbol
            }
          )
        end
        def to_hash
        end

        class Debug < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::StatDescribeResponse::DescribeMetric::Debug,
                WhopSDK::Internal::AnyHash
              )
            end

          # Unique request identifier for debugging.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_id

          # Debug information.
          sig do
            params(request_id: T.nilable(String)).returns(T.attached_class)
          end
          def self.new(
            # Unique request identifier for debugging.
            request_id:
          )
          end

          sig { override.returns({ request_id: T.nilable(String) }) }
          def to_hash
          end
        end
      end

      class DescribeView < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::Models::StatDescribeResponse::DescribeView,
              WhopSDK::Internal::AnyHash
            )
          end

        # Available associations.
        sig do
          returns(
            T::Array[
              WhopSDK::Models::StatDescribeResponse::DescribeView::Association
            ]
          )
        end
        attr_accessor :associations

        # Available columns.
        sig { returns(T::Array[String]) }
        attr_accessor :columns

        # Debug information.
        sig do
          returns(
            T.nilable(
              WhopSDK::Models::StatDescribeResponse::DescribeView::Debug
            )
          )
        end
        attr_reader :debug

        sig do
          params(
            debug:
              T.nilable(
                WhopSDK::Models::StatDescribeResponse::DescribeView::Debug::OrHash
              )
          ).void
        end
        attr_writer :debug

        # The query engine being used.
        sig { returns(String) }
        attr_accessor :engine

        # Available metrics.
        sig do
          returns(
            T::Array[
              WhopSDK::Models::StatDescribeResponse::DescribeView::Metric
            ]
          )
        end
        attr_accessor :metrics

        # The underlying model class.
        sig { returns(String) }
        attr_accessor :model

        # The API resource name.
        sig { returns(String) }
        attr_accessor :resource

        # Sample data rows.
        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_accessor :sample

        # Columns that can be used for sorting.
        sig { returns(T::Array[String]) }
        attr_accessor :sortable_columns

        # The typename of this object
        sig { returns(Symbol) }
        attr_accessor :typename

        # The view name being described.
        sig { returns(String) }
        attr_accessor :view

        # Description of an API resource view including its columns and associations.
        sig do
          params(
            associations:
              T::Array[
                WhopSDK::Models::StatDescribeResponse::DescribeView::Association::OrHash
              ],
            columns: T::Array[String],
            debug:
              T.nilable(
                WhopSDK::Models::StatDescribeResponse::DescribeView::Debug::OrHash
              ),
            engine: String,
            metrics:
              T::Array[
                WhopSDK::Models::StatDescribeResponse::DescribeView::Metric::OrHash
              ],
            model: String,
            resource: String,
            sample: T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
            sortable_columns: T::Array[String],
            view: String,
            typename: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Available associations.
          associations:,
          # Available columns.
          columns:,
          # Debug information.
          debug:,
          # The query engine being used.
          engine:,
          # Available metrics.
          metrics:,
          # The underlying model class.
          model:,
          # The API resource name.
          resource:,
          # Sample data rows.
          sample:,
          # Columns that can be used for sorting.
          sortable_columns:,
          # The view name being described.
          view:,
          # The typename of this object
          typename: :DescribeView
        )
        end

        sig do
          override.returns(
            {
              associations:
                T::Array[
                  WhopSDK::Models::StatDescribeResponse::DescribeView::Association
                ],
              columns: T::Array[String],
              debug:
                T.nilable(
                  WhopSDK::Models::StatDescribeResponse::DescribeView::Debug
                ),
              engine: String,
              metrics:
                T::Array[
                  WhopSDK::Models::StatDescribeResponse::DescribeView::Metric
                ],
              model: String,
              resource: String,
              sample: T.nilable(T::Array[T::Hash[Symbol, T.anything]]),
              sortable_columns: T::Array[String],
              typename: Symbol,
              view: String
            }
          )
        end
        def to_hash
        end

        class Association < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::StatDescribeResponse::DescribeView::Association,
                WhopSDK::Internal::AnyHash
              )
            end

          # The event name (for event type).
          sig { returns(T.nilable(String)) }
          attr_accessor :event_name

          # The associated model class name (for model associations).
          sig { returns(T.nilable(String)) }
          attr_accessor :model

          # The association name.
          sig { returns(String) }
          attr_accessor :name

          # The full path (for event associations).
          sig { returns(T.nilable(String)) }
          attr_accessor :path

          # The type (belongs_to, has_many, has_one, event, namespace).
          sig { returns(String) }
          attr_accessor :type

          # An association or child path available for navigation.
          sig do
            params(
              event_name: T.nilable(String),
              model: T.nilable(String),
              name: String,
              path: T.nilable(String),
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The event name (for event type).
            event_name:,
            # The associated model class name (for model associations).
            model:,
            # The association name.
            name:,
            # The full path (for event associations).
            path:,
            # The type (belongs_to, has_many, has_one, event, namespace).
            type:
          )
          end

          sig do
            override.returns(
              {
                event_name: T.nilable(String),
                model: T.nilable(String),
                name: String,
                path: T.nilable(String),
                type: String
              }
            )
          end
          def to_hash
          end
        end

        class Debug < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::StatDescribeResponse::DescribeView::Debug,
                WhopSDK::Internal::AnyHash
              )
            end

          # Unique request identifier for debugging.
          sig { returns(T.nilable(String)) }
          attr_accessor :request_id

          # Debug information.
          sig do
            params(request_id: T.nilable(String)).returns(T.attached_class)
          end
          def self.new(
            # Unique request identifier for debugging.
            request_id:
          )
          end

          sig { override.returns({ request_id: T.nilable(String) }) }
          def to_hash
          end
        end

        class Metric < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::Models::StatDescribeResponse::DescribeView::Metric,
                WhopSDK::Internal::AnyHash
              )
            end

          # The metric name.
          sig { returns(String) }
          attr_accessor :name

          # The node path this metric operates on.
          sig { returns(String) }
          attr_accessor :node_path

          # Query engines that support this metric.
          sig { returns(T::Array[String]) }
          attr_accessor :supported_engines

          # A metric available for querying.
          sig do
            params(
              name: String,
              node_path: String,
              supported_engines: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # The metric name.
            name:,
            # The node path this metric operates on.
            node_path:,
            # Query engines that support this metric.
            supported_engines:
          )
          end

          sig do
            override.returns(
              {
                name: String,
                node_path: String,
                supported_engines: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end
      end

      sig do
        override.returns(
          T::Array[WhopSDK::Models::StatDescribeResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
