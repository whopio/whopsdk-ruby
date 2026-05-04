# frozen_string_literal: true

require_relative "../test_helper"

class WhopSDK::Test::Resources::StatsTest < WhopSDK::Test::ResourceTest
  def test_describe
    skip("Mock server tests are disabled")

    response = @whop.stats.describe

    assert_pattern do
      response => WhopSDK::Models::StatDescribeResponse
    end

    assert_pattern do
      case response
      in WhopSDK::Models::StatDescribeResponse::DescribeRoot
      in WhopSDK::Models::StatDescribeResponse::DescribeNode
      in WhopSDK::Models::StatDescribeResponse::DescribeMetric
      in WhopSDK::Models::StatDescribeResponse::DescribeView
      end
    end

    assert_pattern do
      case response
      in {
        typename: :DescribeRoot,
        debug: WhopSDK::Models::StatDescribeResponse::DescribeRoot::Debug | nil,
        metrics: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatDescribeResponse::DescribeRoot::Metric]),
        nodes: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        views: ^(WhopSDK::Internal::Type::ArrayOf[String])
      }
      in {
        typename: :DescribeNode,
        associations: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatDescribeResponse::DescribeNode::Association]),
        columns: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        debug: WhopSDK::Models::StatDescribeResponse::DescribeNode::Debug | nil,
        engine: String,
        metrics: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatDescribeResponse::DescribeNode::Metric]),
        node: String,
        sample: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]]) | nil,
        sortable_columns: ^(WhopSDK::Internal::Type::ArrayOf[String])
      }
      in {
        typename: :DescribeMetric,
        breakdownable_columns: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        debug: WhopSDK::Models::StatDescribeResponse::DescribeMetric::Debug | nil,
        engine: String,
        filterable_columns: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        metric: String,
        node: String,
        sql: String | nil,
        supported_engines: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        timestamp_column: String
      }
      in {
        typename: :DescribeView,
        associations: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatDescribeResponse::DescribeView::Association]),
        columns: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        debug: WhopSDK::Models::StatDescribeResponse::DescribeView::Debug | nil,
        engine: String,
        metrics: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Models::StatDescribeResponse::DescribeView::Metric]),
        model: String,
        resource: String,
        sample: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]]) | nil,
        sortable_columns: ^(WhopSDK::Internal::Type::ArrayOf[String]),
        view: String
      }
      end
    end
  end

  def test_query_metric_required_params
    skip("Mock server tests are disabled")

    response = @whop.stats.query_metric(resource: "resource")

    assert_pattern do
      response => WhopSDK::Models::StatQueryMetricResponse
    end

    assert_pattern do
      response => {
        columns: ^(WhopSDK::Internal::Type::ArrayOf[String]) | nil,
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]]) | nil,
        debug: WhopSDK::Models::StatQueryMetricResponse::Debug | nil,
        node: String | nil,
        pagination: WhopSDK::Models::StatQueryMetricResponse::Pagination | nil,
        typename: Symbol
      }
    end
  end

  def test_query_raw_required_params
    skip("Mock server tests are disabled")

    response = @whop.stats.query_raw(resource: "resource")

    assert_pattern do
      response => WhopSDK::Models::StatQueryRawResponse
    end

    assert_pattern do
      response => {
        columns: ^(WhopSDK::Internal::Type::ArrayOf[String]) | nil,
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]]) | nil,
        debug: WhopSDK::Models::StatQueryRawResponse::Debug | nil,
        node: String | nil,
        pagination: WhopSDK::Models::StatQueryRawResponse::Pagination | nil
      }
    end
  end

  def test_run_sql_required_params
    skip("Mock server tests are disabled")

    response = @whop.stats.run_sql(resource: "resource", sql: "sql")

    assert_pattern do
      response => WhopSDK::Models::StatRunSqlResponse
    end

    assert_pattern do
      response => {
        columns: ^(WhopSDK::Internal::Type::ArrayOf[String]) | nil,
        data: ^(WhopSDK::Internal::Type::ArrayOf[WhopSDK::Internal::Type::HashOf[WhopSDK::Internal::Type::Unknown]]) | nil,
        debug: WhopSDK::Models::StatRunSqlResponse::Debug | nil,
        node: String | nil,
        pagination: WhopSDK::Models::StatRunSqlResponse::Pagination | nil,
        typename: Symbol
      }
    end
  end
end
