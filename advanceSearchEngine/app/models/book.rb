class Book < ApplicationRecord

  def self.search_for(search)
    if search
      where(["name LIKE ?","%#{search}%"])
    else
      all
    end
  end

end
