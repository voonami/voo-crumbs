require "spec_helper"

describe Voonami::Crumbs::Breadcrumbs, DummyController do
  subject { DummyController.new }

  its(:breadcrumbs) { should include(["Home", "/"]) }

  context "calling from an instance method" do
    before(:each) { subject.index }

    its(:breadcrumbs) { should include(["Index", "/child"]) }
  end
end
