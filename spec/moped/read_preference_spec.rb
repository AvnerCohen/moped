require "spec_helper"

describe Moped::ReadPreference do

  describe ".get" do

    context "when asking for :nearest" do

      let(:preference) do
        described_class.get(:nearest)
      end

      let(:nearest) do
        Moped::ReadPreference::Nearest
      end

      it "returns the nearest read preference" do
        expect(preference).to eq(nearest)
      end
    end

    context "when asking for :primary" do

      let(:preference) do
        described_class.get(:primary)
      end

      let(:primary) do
        Moped::ReadPreference::Primary
      end

      it "returns the primary read preference" do
        expect(preference).to eq(primary)
      end
    end

    context "when asking for :primary_preferred" do

      let(:preference) do
        described_class.get(:primary_preferred)
      end

      let(:primary_preferred) do
        Moped::ReadPreference::PrimaryPreferred
      end

      it "returns the primary preferred read preference" do
        expect(preference).to eq(primary_preferred)
      end
    end
  end
end
