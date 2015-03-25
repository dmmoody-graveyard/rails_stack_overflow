class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :questions
  validates :username, :uniqueness => true

  after_create :send_welcome_message

  def send_welcome_message
    NotificationMailer.notification_mailer(self)
  end
end
