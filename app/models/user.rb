class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         validates:username,presence: true
        validates:username,uniqueness: true
        has_many(:photos,:class_name=>"Photo",:foreign_key=>"user_id")
       has_many(:comments,:class_name=>"Comment",:foreign_key=>"user_id")
       has_many(:likes,:class_name=>"Like",:foreign_key=>"user_id")
       has_many :liked_photos, :through => :likes, :source => :photo

end
