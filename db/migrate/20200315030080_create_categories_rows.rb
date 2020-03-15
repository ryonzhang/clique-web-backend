class CreateCategoriesRows < ActiveRecord::Migration[5.2]
  def change
    Category.create name:'Culinary & Baking'
    Category.create name:'Art & Craft'
    Category.create name:'Development Skills'
    Category.create name:'Performing Arts'
    Category.create name:'Programming'
    Category.create name:'Photography Skills'
    Category.create name:'Sport & Fitness'
  end
end
