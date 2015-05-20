class PagesController < ApplicationController
  def home
    @projects = Project.all.order('created_at DESC')[0..3]
  end

  def about
  end

  def contact
  end

  def FAQ
  end

  def how_it_works
  end
end
