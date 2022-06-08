module NavActiveLinkHelper
  def get_active_link(path)
    current_page?(path) ? 'active' : ''
  end
end