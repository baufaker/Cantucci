require File.expand_path('../acceptance_test_helper', __FILE__)
require 'mocha'

class StubInstanceMethodDefinedOnSingletonClassTest < Test::Unit::TestCase

  include AcceptanceTest

  def setup
    setup_acceptance_test
  end

  def teardown
    teardown_acceptance_test
  end

  def test_should_stub_public_method_and_leave_it_unchanged_after_test
    instance = Class.new.new
    class << instance
      def my_singleton_method
        :original_return_value
      end
      public :my_singleton_method
    end
    assert_snapshot_unchanged(instance) do
      test_result = run_as_test do
        instance.stubs(:my_singleton_method).returns(:stubbed_return_value)
        assert_equal :stubbed_return_value, instance.my_singleton_method
      end
      assert_passed(test_result)
    end
    assert_equal :original_return_value, instance.my_singleton_method
  end

  def test_should_stub_protected_method_and_leave_it_unchanged_after_test
    instance = Class.new.new
    class << instance
      def my_singleton_method
        :original_return_value
      end
      protected :my_singleton_method
    end
    assert_snapshot_unchanged(instance) do
      test_result = run_as_test do
        instance.stubs(:my_singleton_method).returns(:stubbed_return_value)
        assert_equal :stubbed_return_value, instance.send(:my_singleton_method)
      end
      assert_passed(test_result)
    end
    assert_equal :original_return_value, instance.send(:my_singleton_method)
  end

  def test_should_stub_private_method_and_leave_it_unchanged_after_test
    instance = Class.new.new
    class << instance
      def my_singleton_method
        :original_return_value
      end
      private :my_singleton_method
    end
    assert_snapshot_unchanged(instance) do
      test_result = run_as_test do
        instance.stubs(:my_singleton_method).returns(:stubbed_return_value)
        assert_equal :stubbed_return_value, instance.send(:my_singleton_method)
      end
      assert_passed(test_result)
    end
    assert_equal :original_return_value, instance.send(:my_singleton_method)
  end

end