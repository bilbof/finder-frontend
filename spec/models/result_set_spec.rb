require 'spec_helper'

describe ResultSet do
  include ApiHelper

  describe ".from_hash" do
    context "when the api returns a result set hash with some documents" do
      let(:result_set_hash) { {
        'document_noun' => 'case',
        'documents' => [
          :a_document_hash,
          :another_document_hash
        ]
      } }

      subject { ResultSet.from_hash(result_set_hash) }

      before do
        Document.stub(:from_hash).with(:a_document_hash).and_return(:a_document_instance)
        Document.stub(:from_hash).with(:another_document_hash).and_return(:another_document_instance)
      end

      specify { subject.document_noun.should == 'case' }
      specify { subject.documents.should == [:a_document_instance, :another_document_instance] }
    end
  end

  describe ".get" do
    let(:finder_slug) { 'finder-slug' }
    let(:params) { { some_facet: 'a-facet-value' } }
    before { mock_api.stub(:get_documents).with(finder_slug, params).and_return(:result_set_hash) }

    subject { ResultSet.get(finder_slug, params) }

    it "should get a result set hash from the api and build a result set with it" do
      ResultSet.stub(:from_hash).with(:result_set_hash).and_return(:a_built_result_set)
      subject.should == :a_built_result_set
    end
  end

  describe "#count" do
    subject { ResultSet.new(documents: [:a_document_instance, :another_document_instance]) }

    specify { subject.count.should == 2 }
  end
end
