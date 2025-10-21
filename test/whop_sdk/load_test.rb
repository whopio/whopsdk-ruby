# frozen_string_literal: true

require "minitest/autorun"

class LoadTest < Minitest::Test
  def test_require_whop_sdk_defines_namespace
    $LOAD_PATH.unshift(lib_path) unless $LOAD_PATH.include?(lib_path)

    Object.send(:remove_const, :WhopSDK) if Object.const_defined?(:WhopSDK)
    $LOADED_FEATURES.delete_if { |feature| feature.end_with?("whop-sdk.rb") }

    require("whop-sdk")

    assert(defined?(WhopSDK), 'WhopSDK should be defined after require "whop-sdk"')
  ensure
    require("whop-sdk")
  end

  private

  def lib_path = File.expand_path("../../lib", __dir__)
end
