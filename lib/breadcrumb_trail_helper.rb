module BreadcrumbTrailHelper
  def crumbs
    if @crumbs
      list_items = String.new
      
      @crumbs.each do |c|
        list_items << content_tag(:li, link_to(h(c[:label]), c[:link]), :class => c[:class]) if c[:link]
        list_items << content_tag(:li, h(c[:label]), :class => c[:class]) unless c[:link]
      end
      
      content_tag :ol, list_items, :class => 'breadcrumb'
    end
  end
end