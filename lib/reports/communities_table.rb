class CommunitiesTable < Report

  def full

    metrics = [:name, :visits, :visitors, :pageviews, :new_visitors, :returning_visitors, :bouncerate, :average_time, :pages_per_visit]

    data={}
    metrics.each {|m| data[m]=[]} # Create hash keys

    @@sites.values.each do |site|
      if site.community_page?

        data[:name] << site.name
        data[:visitors] << site.visitors
        data[:visits] << site.visits
        data[:pageviews] << site.pageviews
        data[:new_visitors] << site.new_visitors
        data[:returning_visitors] << site.returning_visitors
        data[:bouncerate] << site.bouncerate
        data[:average_time] << site.average_time
        data[:pages_per_visit] << site.pages_per_visit
      end
    end

    self.check(data)
    data
  end

end

