require 'standalone_sweeper'

class StatSweeper < StandaloneSweeper
  observe Stat

  def after_save(stat)
    expire_page(:controller => 'alerts', :action => 'statistics')
    expire_page(:controller => 'static', :action => %w( about faq get_involved ))
  end
end
