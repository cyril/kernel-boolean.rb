# frozen_string_literal: true

require_relative "spec_helper"

RSpec.describe Kernel do
  describe "#Boolean" do
    subject do
      Boolean(arg)
    end

    context "when the argument is true" do
      let(:arg) { true }

      it { is_expected.to be_true }
    end

    context "when the argument is false" do
      let(:arg) { false }

      it { is_expected.to be_false }
    end

    context "when the argument is nil" do
      let(:arg) { nil }

      it { is_expected.to raise_exception(TypeError) }
    end

    context "when the argument is 'true'" do
      let(:arg) { "true" }

      it { is_expected.to raise_exception(ArgumentError) }
    end

    context "when a fake true's #object_id is the same as true's" do
      let(:fake_true) do
        Class.new do
          def equal?(_other)
            true
          end

          def eql?(_other)
            true
          end

          def ===(_other)
            true
          end

          def ==(_other)
            true
          end

          def object_id
            true.object_id
          end
        end
      end

      let(:arg) { fake_true.new }

      it { is_expected.to raise_exception(ArgumentError) }
    end

    context "when a fake false's #object_id is the same as false's" do
      let(:fake_false) do
        Class.new do
          def equal?(_other)
            true
          end

          def eql?(_other)
            true
          end

          def ===(_other)
            true
          end

          def ==(_other)
            true
          end

          def object_id
            false.object_id
          end
        end
      end

      let(:arg) { fake_false.new }

      it { is_expected.to raise_exception(ArgumentError) }
    end
  end
end
