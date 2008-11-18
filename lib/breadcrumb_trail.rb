module BreadcrumbTrail
  def add_root_crumb(crumb={})
    defaults = {:link => root_path, :label => 'Home', :class => 'first'}
    @crumbs = [defaults.merge(crumb)]
  end
  def add_crumb(crumb)
    add_root_crumb unless @crumbs
    @crumbs << crumb
  end
end
