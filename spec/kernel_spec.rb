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
  end
end
