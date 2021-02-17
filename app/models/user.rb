class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :prototypes
  has_many :comments      

#以下4項目は「カラムが空では保存できない」（email,passwordは標準で左記条件が適用されている為記述なし）

  validates :name,         presence:true
  validates :profile,      presence:true
  validates :occupation,   presence:true
  validates :position,     presence:true

 
end
