require "spec_helper"

describe Voonami::Crumbs::Breadcrumbs, DummyController do
  subject { DummyController.new }

  its(:breadcrumbs) { should include(["Home", "/"]) }
  its(:title_from_breadcrumbs) { should == "Home" }

  context "calling from an instance method" do
    before(:each) { subject.index }

    its(:breadcrumbs) { should include(["Index", "/child"]) }
    its(:title_from_breadcrumbs) { should == "Home :: Index" }

    it "allows a custom root caption" do
      subject.title_from_breadcrumbs(root_caption: "Booga").should == "Booga :: Index"
    end

    it "allows a custom seperator" do
      subject.title_from_breadcrumbs(seperator: " -> ").should == "Home -> Index"
    end
  end
end
