module BreadcrumbTrail
  def add_crumb(crumb)
    @crumbs ||= [:link => root_path, :label => 'Home', :class => 'first']
    @crumbs << crumb
  end
end
