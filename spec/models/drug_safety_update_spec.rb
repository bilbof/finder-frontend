require 'spec_helper'

describe DrugSafetyUpdate do
  subject { DrugSafetyUpdate.new(document_attributes) }
  let(:published_at) { 1.year.ago.to_date }
  let(:document_attributes) { {} }

  describe '#metadata' do
    context 'with all attributes' do
      let(:document_attributes) do
        {
          'therapeutic_area' => [{
            'value' => 'anaesthesia-intensive-care',
            'label' => 'Anaesthesia and intensive care',
          }],
          'published_at' => published_at,
        }
      end

      specify do
        subject.metadata.should == [
          {
            name: 'Therapeutic area',
            value: 'Anaesthesia and intensive care',
            type: 'text',
          },
          {
            name: 'Published',
            value: published_at,
            type: 'date',
          },
        ]
      end
    end

    context 'with missing attributes' do
      let(:document_attributes) do
        {}
      end

      specify do
        subject.metadata.should == []
      end
    end

    context 'with empty attributes' do
      let(:document_attributes) do
        {
          'therapeutic_area' => [{
            'value' => nil,
            'label' => nil,
          }],
          'published_at' => nil,
        }
      end

      specify do
        subject.metadata.should == []
      end
    end
  end
end