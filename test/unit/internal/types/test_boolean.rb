# frozen_string_literal: true

require "test_helper"

describe Whop_sdk::Internal::Types::Boolean do
  describe ".coerce" do
    it "coerces true/false" do
      assert Whop_sdk::Internal::Types::Boolean.coerce(true)
      refute Whop_sdk::Internal::Types::Boolean.coerce(false)
    end

    it "coerces an Integer" do
      assert Whop_sdk::Internal::Types::Boolean.coerce(1)
      refute Whop_sdk::Internal::Types::Boolean.coerce(0)
    end

    it "coerces a String" do
      assert Whop_sdk::Internal::Types::Boolean.coerce("1")
      assert Whop_sdk::Internal::Types::Boolean.coerce("true")
      refute Whop_sdk::Internal::Types::Boolean.coerce("0")
    end

    it "passes through other values with strictness off" do
      obj = Object.new

      assert_equal obj, Whop_sdk::Internal::Types::Boolean.coerce(obj)
    end

    it "raises an error with other values with strictness on" do
      assert_raises Whop_sdk::Internal::Errors::TypeError do
        Whop_sdk::Internal::Types::Boolean.coerce(Object.new, strict: true)
      end
    end
  end
end
