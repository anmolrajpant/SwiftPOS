class Product < ApplicationRecord
  belongs_to :user
  has_many :items
  belongs_to :catagory
  validates :name, presence: true
  validates :price, :numericality => { :greater_than_or_equal_to => 0}
  
  before_save :check_for_duplicates?
  def check_for_duplicates?
    if Product.where("name like = ?")
      puts "The profuct is already added!!!"
    end
  end

  before_create :set_code  
  def generate_code(size = 6)  
   charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}  
   (0...size).map{ charset.to_a[rand(charset.size)] }.join  
  end  
  def set_code  
   self.code = generate_code(6)  
  end

  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }
end
