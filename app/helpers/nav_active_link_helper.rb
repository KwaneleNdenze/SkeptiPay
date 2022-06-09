module NavActiveLinkHelper
  def active_link_css(path)
    current_page?(path) ? 'active' : ''
  end
end