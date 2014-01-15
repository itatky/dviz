# -*- coding: utf-8 -*-
module Youtube
  class Searcher

    # 検索語をクエリにセットして、リクエストする  
    def search(keyword)
      req_url = "http://gdata.youtube.com/feeds/api/videos?q=#{URI.encode(keyword)}?v=2&alt=json&start-index=1&max-results=5"
      feed = RestClient.get(req_url)
      video = JSON.parse(feed)
      Hash[video["feed"]["entry"].map { |entry|
             [entry["title"]["$t"],
              entry["media$group"]["media$content"].first["url"]]
           }]
    end
  end
end

