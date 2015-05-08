class PagesController < ApplicationController
  def home
    @categories = Category.all
    @categories_1 = @categories[0..3]
    @categories_2 = @categories[4..7]
    @category_3 = @categories.last.name
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
