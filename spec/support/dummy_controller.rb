class DummyController
  def self.helper_method(*args)
    # Just an empty stub
  end

  def self.before_filter(&block)
    before_filters << block
  end

  def self.before_filters
    @before_filters ||= []
  end

  include Voonami::Crumbs::Breadcrumbs

  drop_crumb "Home", :root_path

  def initialize
    self.class.before_filters.each do |block|
      block.call(self)
    end
  end

  def index
    drop_crumb "Index", "/child"
  end

  def root_path
    "/"
  end

  def about_path
    "/about"
  end

end

