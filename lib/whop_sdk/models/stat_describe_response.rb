# frozen_string_literal: true

module WhopSDK
  module Models
    # Root schema description showing available nodes, views, and metrics.
    #
    # @see WhopSDK::Resources::Stats#describe
    module StatDescribeResponse
      extend WhopSDK::Internal::Type::Union

      discriminator :typename

      # Root schema description showing available nodes, views, and metrics.
      variant :DescribeRoot, -> { WhopSDK::Models::StatDescribeResponse::DescribeRoot }

      # Description of a node (model) including its columns and associations.
      variant :DescribeNode, -> { WhopSDK::Models::StatDescribeResponse::DescribeNode }

      # Description of a metric including its configuration and SQL.
      variant :DescribeMetric, -> { WhopSDK::Models::StatDescribeResponse::DescribeMetric }

      # Description of an API resource view including its columns and associations.
      variant :DescribeView, -> { WhopSDK::Models::StatDescribeResponse::DescribeView }

      class DescribeRoot < WhopSDK::Internal::Type::BaseModel
        # @!attribute debug
        #   Debug information.
        #
        #   @return [WhopSDK::Models::StatDescribeResponse::DescribeRoot::Debug, nil]
        required :debug, -> { WhopSDK::Models::StatDescribeResponse::DescribeRoot::Debug }, nil?: true

        # @!attribute metrics
        #   Available metrics.
        #
        #   @return [Array<WhopSDK::Models::StatDescribeResponse::DescribeRoot::Metric>]
        required :metrics,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatDescribeResponse::DescribeRoot::Metric] }

        # @!attribute nodes
        #   Available root nodes.
        #
        #   @return [Array<String>]
        required :nodes, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :DescribeRoot]
        required :typename, const: :DescribeRoot

        # @!attribute views
        #   Available API resource views.
        #
        #   @return [Array<String>]
        required :views, WhopSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(debug:, metrics:, nodes:, views:, typename: :DescribeRoot)
        #   Root schema description showing available nodes, views, and metrics.
        #
        #   @param debug [WhopSDK::Models::StatDescribeResponse::DescribeRoot::Debug, nil] Debug information.
        #
        #   @param metrics [Array<WhopSDK::Models::StatDescribeResponse::DescribeRoot::Metric>] Available metrics.
        #
        #   @param nodes [Array<String>] Available root nodes.
        #
        #   @param views [Array<String>] Available API resource views.
        #
        #   @param typename [Symbol, :DescribeRoot] The typename of this object

        # @see WhopSDK::Models::StatDescribeResponse::DescribeRoot#debug
        class Debug < WhopSDK::Internal::Type::BaseModel
          # @!attribute request_id
          #   Unique request identifier for debugging.
          #
          #   @return [String, nil]
          required :request_id, String, nil?: true

          # @!method initialize(request_id:)
          #   Debug information.
          #
          #   @param request_id [String, nil] Unique request identifier for debugging.
        end

        class Metric < WhopSDK::Internal::Type::BaseModel
          # @!attribute name
          #   The metric name.
          #
          #   @return [String]
          required :name, String

          # @!attribute node_path
          #   The node path this metric operates on.
          #
          #   @return [String]
          required :node_path, String

          # @!attribute supported_engines
          #   Query engines that support this metric.
          #
          #   @return [Array<String>]
          required :supported_engines, WhopSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(name:, node_path:, supported_engines:)
          #   A metric available for querying.
          #
          #   @param name [String] The metric name.
          #
          #   @param node_path [String] The node path this metric operates on.
          #
          #   @param supported_engines [Array<String>] Query engines that support this metric.
        end
      end

      class DescribeNode < WhopSDK::Internal::Type::BaseModel
        # @!attribute associations
        #   Available associations or child paths.
        #
        #   @return [Array<WhopSDK::Models::StatDescribeResponse::DescribeNode::Association>]
        required :associations,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatDescribeResponse::DescribeNode::Association] }

        # @!attribute columns
        #   Available columns.
        #
        #   @return [Array<String>]
        required :columns, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute debug
        #   Debug information.
        #
        #   @return [WhopSDK::Models::StatDescribeResponse::DescribeNode::Debug, nil]
        required :debug, -> { WhopSDK::Models::StatDescribeResponse::DescribeNode::Debug }, nil?: true

        # @!attribute engine
        #   The query engine being used.
        #
        #   @return [String]
        required :engine, String

        # @!attribute metrics
        #   Available metrics for this node.
        #
        #   @return [Array<WhopSDK::Models::StatDescribeResponse::DescribeNode::Metric>]
        required :metrics,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatDescribeResponse::DescribeNode::Metric] }

        # @!attribute node
        #   The node path being described.
        #
        #   @return [String]
        required :node, String

        # @!attribute sample
        #   Sample data rows.
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        required :sample,
                 WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]],
                 nil?: true

        # @!attribute sortable_columns
        #   Columns that can be used for sorting.
        #
        #   @return [Array<String>]
        required :sortable_columns, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :DescribeNode]
        required :typename, const: :DescribeNode

        # @!method initialize(associations:, columns:, debug:, engine:, metrics:, node:, sample:, sortable_columns:, typename: :DescribeNode)
        #   Description of a node (model) including its columns and associations.
        #
        #   @param associations [Array<WhopSDK::Models::StatDescribeResponse::DescribeNode::Association>] Available associations or child paths.
        #
        #   @param columns [Array<String>] Available columns.
        #
        #   @param debug [WhopSDK::Models::StatDescribeResponse::DescribeNode::Debug, nil] Debug information.
        #
        #   @param engine [String] The query engine being used.
        #
        #   @param metrics [Array<WhopSDK::Models::StatDescribeResponse::DescribeNode::Metric>] Available metrics for this node.
        #
        #   @param node [String] The node path being described.
        #
        #   @param sample [Array<Hash{Symbol=>Object}>, nil] Sample data rows.
        #
        #   @param sortable_columns [Array<String>] Columns that can be used for sorting.
        #
        #   @param typename [Symbol, :DescribeNode] The typename of this object

        class Association < WhopSDK::Internal::Type::BaseModel
          # @!attribute event_name
          #   The event name (for event type).
          #
          #   @return [String, nil]
          required :event_name, String, nil?: true

          # @!attribute model
          #   The associated model class name (for model associations).
          #
          #   @return [String, nil]
          required :model, String, nil?: true

          # @!attribute name
          #   The association name.
          #
          #   @return [String]
          required :name, String

          # @!attribute path
          #   The full path (for event associations).
          #
          #   @return [String, nil]
          required :path, String, nil?: true

          # @!attribute type
          #   The type (belongs_to, has_many, has_one, event, namespace).
          #
          #   @return [String]
          required :type, String

          # @!method initialize(event_name:, model:, name:, path:, type:)
          #   An association or child path available for navigation.
          #
          #   @param event_name [String, nil] The event name (for event type).
          #
          #   @param model [String, nil] The associated model class name (for model associations).
          #
          #   @param name [String] The association name.
          #
          #   @param path [String, nil] The full path (for event associations).
          #
          #   @param type [String] The type (belongs_to, has_many, has_one, event, namespace).
        end

        # @see WhopSDK::Models::StatDescribeResponse::DescribeNode#debug
        class Debug < WhopSDK::Internal::Type::BaseModel
          # @!attribute request_id
          #   Unique request identifier for debugging.
          #
          #   @return [String, nil]
          required :request_id, String, nil?: true

          # @!method initialize(request_id:)
          #   Debug information.
          #
          #   @param request_id [String, nil] Unique request identifier for debugging.
        end

        class Metric < WhopSDK::Internal::Type::BaseModel
          # @!attribute name
          #   The metric name.
          #
          #   @return [String]
          required :name, String

          # @!attribute node_path
          #   The node path this metric operates on.
          #
          #   @return [String]
          required :node_path, String

          # @!attribute supported_engines
          #   Query engines that support this metric.
          #
          #   @return [Array<String>]
          required :supported_engines, WhopSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(name:, node_path:, supported_engines:)
          #   A metric available for querying.
          #
          #   @param name [String] The metric name.
          #
          #   @param node_path [String] The node path this metric operates on.
          #
          #   @param supported_engines [Array<String>] Query engines that support this metric.
        end
      end

      class DescribeMetric < WhopSDK::Internal::Type::BaseModel
        # @!attribute breakdownable_columns
        #   Columns that can be used for breakdowns.
        #
        #   @return [Array<String>]
        required :breakdownable_columns, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute debug
        #   Debug information.
        #
        #   @return [WhopSDK::Models::StatDescribeResponse::DescribeMetric::Debug, nil]
        required :debug, -> { WhopSDK::Models::StatDescribeResponse::DescribeMetric::Debug }, nil?: true

        # @!attribute engine
        #   The query engine being used.
        #
        #   @return [String]
        required :engine, String

        # @!attribute filterable_columns
        #   Columns that can be used for filtering.
        #
        #   @return [Array<String>]
        required :filterable_columns, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute metric
        #   The metric name.
        #
        #   @return [String]
        required :metric, String

        # @!attribute node
        #   The node path this metric operates on.
        #
        #   @return [String]
        required :node, String

        # @!attribute sql
        #   The generated SQL query.
        #
        #   @return [String, nil]
        required :sql, String, nil?: true

        # @!attribute supported_engines
        #   Query engines that support this metric.
        #
        #   @return [Array<String>]
        required :supported_engines, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute timestamp_column
        #   The timestamp column used for time filtering.
        #
        #   @return [String]
        required :timestamp_column, String

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :DescribeMetric]
        required :typename, const: :DescribeMetric

        # @!method initialize(breakdownable_columns:, debug:, engine:, filterable_columns:, metric:, node:, sql:, supported_engines:, timestamp_column:, typename: :DescribeMetric)
        #   Description of a metric including its configuration and SQL.
        #
        #   @param breakdownable_columns [Array<String>] Columns that can be used for breakdowns.
        #
        #   @param debug [WhopSDK::Models::StatDescribeResponse::DescribeMetric::Debug, nil] Debug information.
        #
        #   @param engine [String] The query engine being used.
        #
        #   @param filterable_columns [Array<String>] Columns that can be used for filtering.
        #
        #   @param metric [String] The metric name.
        #
        #   @param node [String] The node path this metric operates on.
        #
        #   @param sql [String, nil] The generated SQL query.
        #
        #   @param supported_engines [Array<String>] Query engines that support this metric.
        #
        #   @param timestamp_column [String] The timestamp column used for time filtering.
        #
        #   @param typename [Symbol, :DescribeMetric] The typename of this object

        # @see WhopSDK::Models::StatDescribeResponse::DescribeMetric#debug
        class Debug < WhopSDK::Internal::Type::BaseModel
          # @!attribute request_id
          #   Unique request identifier for debugging.
          #
          #   @return [String, nil]
          required :request_id, String, nil?: true

          # @!method initialize(request_id:)
          #   Debug information.
          #
          #   @param request_id [String, nil] Unique request identifier for debugging.
        end
      end

      class DescribeView < WhopSDK::Internal::Type::BaseModel
        # @!attribute associations
        #   Available associations.
        #
        #   @return [Array<WhopSDK::Models::StatDescribeResponse::DescribeView::Association>]
        required :associations,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatDescribeResponse::DescribeView::Association] }

        # @!attribute columns
        #   Available columns.
        #
        #   @return [Array<String>]
        required :columns, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute debug
        #   Debug information.
        #
        #   @return [WhopSDK::Models::StatDescribeResponse::DescribeView::Debug, nil]
        required :debug, -> { WhopSDK::Models::StatDescribeResponse::DescribeView::Debug }, nil?: true

        # @!attribute engine
        #   The query engine being used.
        #
        #   @return [String]
        required :engine, String

        # @!attribute metrics
        #   Available metrics.
        #
        #   @return [Array<WhopSDK::Models::StatDescribeResponse::DescribeView::Metric>]
        required :metrics,
                 -> { WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatDescribeResponse::DescribeView::Metric] }

        # @!attribute model
        #   The underlying model class.
        #
        #   @return [String]
        required :model, String

        # @!attribute resource
        #   The API resource name.
        #
        #   @return [String]
        required :resource, String

        # @!attribute sample
        #   Sample data rows.
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        required :sample,
                 WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]],
                 nil?: true

        # @!attribute sortable_columns
        #   Columns that can be used for sorting.
        #
        #   @return [Array<String>]
        required :sortable_columns, WhopSDK::Internal::Type::ArrayOf[String]

        # @!attribute typename
        #   The typename of this object
        #
        #   @return [Symbol, :DescribeView]
        required :typename, const: :DescribeView

        # @!attribute view
        #   The view name being described.
        #
        #   @return [String]
        required :view, String

        # @!method initialize(associations:, columns:, debug:, engine:, metrics:, model:, resource:, sample:, sortable_columns:, view:, typename: :DescribeView)
        #   Description of an API resource view including its columns and associations.
        #
        #   @param associations [Array<WhopSDK::Models::StatDescribeResponse::DescribeView::Association>] Available associations.
        #
        #   @param columns [Array<String>] Available columns.
        #
        #   @param debug [WhopSDK::Models::StatDescribeResponse::DescribeView::Debug, nil] Debug information.
        #
        #   @param engine [String] The query engine being used.
        #
        #   @param metrics [Array<WhopSDK::Models::StatDescribeResponse::DescribeView::Metric>] Available metrics.
        #
        #   @param model [String] The underlying model class.
        #
        #   @param resource [String] The API resource name.
        #
        #   @param sample [Array<Hash{Symbol=>Object}>, nil] Sample data rows.
        #
        #   @param sortable_columns [Array<String>] Columns that can be used for sorting.
        #
        #   @param view [String] The view name being described.
        #
        #   @param typename [Symbol, :DescribeView] The typename of this object

        class Association < WhopSDK::Internal::Type::BaseModel
          # @!attribute event_name
          #   The event name (for event type).
          #
          #   @return [String, nil]
          required :event_name, String, nil?: true

          # @!attribute model
          #   The associated model class name (for model associations).
          #
          #   @return [String, nil]
          required :model, String, nil?: true

          # @!attribute name
          #   The association name.
          #
          #   @return [String]
          required :name, String

          # @!attribute path
          #   The full path (for event associations).
          #
          #   @return [String, nil]
          required :path, String, nil?: true

          # @!attribute type
          #   The type (belongs_to, has_many, has_one, event, namespace).
          #
          #   @return [String]
          required :type, String

          # @!method initialize(event_name:, model:, name:, path:, type:)
          #   An association or child path available for navigation.
          #
          #   @param event_name [String, nil] The event name (for event type).
          #
          #   @param model [String, nil] The associated model class name (for model associations).
          #
          #   @param name [String] The association name.
          #
          #   @param path [String, nil] The full path (for event associations).
          #
          #   @param type [String] The type (belongs_to, has_many, has_one, event, namespace).
        end

        # @see WhopSDK::Models::StatDescribeResponse::DescribeView#debug
        class Debug < WhopSDK::Internal::Type::BaseModel
          # @!attribute request_id
          #   Unique request identifier for debugging.
          #
          #   @return [String, nil]
          required :request_id, String, nil?: true

          # @!method initialize(request_id:)
          #   Debug information.
          #
          #   @param request_id [String, nil] Unique request identifier for debugging.
        end

        class Metric < WhopSDK::Internal::Type::BaseModel
          # @!attribute name
          #   The metric name.
          #
          #   @return [String]
          required :name, String

          # @!attribute node_path
          #   The node path this metric operates on.
          #
          #   @return [String]
          required :node_path, String

          # @!attribute supported_engines
          #   Query engines that support this metric.
          #
          #   @return [Array<String>]
          required :supported_engines, WhopSDK::Internal::Type::ArrayOf[String]

          # @!method initialize(name:, node_path:, supported_engines:)
          #   A metric available for querying.
          #
          #   @param name [String] The metric name.
          #
          #   @param node_path [String] The node path this metric operates on.
          #
          #   @param supported_engines [Array<String>] Query engines that support this metric.
        end
      end

      # @!method self.variants
      #   @return [Array(WhopSDK::Models::StatDescribeResponse::DescribeRoot, WhopSDK::Models::StatDescribeResponse::DescribeNode, WhopSDK::Models::StatDescribeResponse::DescribeMetric, WhopSDK::Models::StatDescribeResponse::DescribeView)]
    end
  end
end
