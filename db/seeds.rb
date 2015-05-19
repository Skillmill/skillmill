
main_categories = ["Architecture", "Graphic-design", "Web-design", "Audio-and-music", "Film-and-video", "Photography", "Writing", "Software-development", "Other"]

Category.delete_all
main_categories.each do |category|
  Category.find_or_create_by(name: category)
end

