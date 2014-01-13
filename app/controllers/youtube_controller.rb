# -*- coding: utf-8 -*-
class YoutubeController < ApplicationController
  
  # 検索ページを表示する
  def index
    respond_to do |format|
      format.html
    end
  end
  
  # 検索を実行する
  def search
    if params[:keyword] != nil
      @videos = search_by_keyword(params[:keyword])
      @keyword = params[:keyword]
    end
    render :action => 'index'
  end

  private
  # Youtubeに問合せをする
  def search_by_keyword(keyword)
    Youtube::Searcher.new.search(keyword)
  end
  
end

