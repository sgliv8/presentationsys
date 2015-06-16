class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :comments
  has_many :grades


  validates_presence_of :first_name
  validates_presence_of :last_name

  def admin?
    self.role.name == "Admin"
  end

  def advisory?
    self.role.name == "Advisory Board"
  end

  def instructor?
    self.role.name == "Instructor"
  end

  def full_name
  	first_name + " " + last_name
  end

end
