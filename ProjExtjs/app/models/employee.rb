class Employee < ApplicationRecord
  has_many :work_times

  def self.search(search)
    if search
      where("name like '%#{search}%'")
    else
      all
    end
  end

  def self.searchuser(username,password)
    if username && password
      where("username='#{username}' and password='#{password}'")
    end
  end
end
