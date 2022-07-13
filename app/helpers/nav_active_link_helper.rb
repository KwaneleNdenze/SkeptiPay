module NavActiveLinkHelper
  def active_link_css(path)
    current_page?(path) ? 'active' : ''
  end

  def app_active_link_css(path)
    current_page?(path) ? 'bg-cardBody text-gray-300 border border-gray-300 hover:text-white group flex items-center px-2 py-4 text-sm font-thin rounded-md' : 'text-gray-300 hover:bg-lightGreen hover:text-white group flex items-center px-2 py-4 text-sm font-thin rounded-md'
  end
end