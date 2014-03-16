class Stores::FoodStore < Stores::BaseStore

  ## Inherits from BaseStore
  #

  self.table_name = "food_stores"

  belongs_to :food_category
  
  validates :title,:food_category_id, presence: true
end
