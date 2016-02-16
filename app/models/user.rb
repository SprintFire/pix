class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :posts

  validates :first_name, :last_name, presence: true, allow_blank: false

  include Gravtastic
  gravtastic default: 'identicon'

  def name
    first_name + " " + last_name
  end

  def last_login
    if last_sign_in_at != nil
      time_ago_in_words(current_sign_in_at) + ' ago'
    end
  end

end
