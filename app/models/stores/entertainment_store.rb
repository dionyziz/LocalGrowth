class Stores::EntertainmentStore < Stores::BaseStore

  self.table_name = "entertainment_stores"

  belongs_to :entertainment_category

  validates :title,:entertainment_category_id, presence: true
end
