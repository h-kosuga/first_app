class User < ActiveRecord::Base
	before_save { email.downcase! }

	validates :name,  presence: true, length: { maximum: 50 }
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,	presence: 	true, 
						format: 	{ with: VALID_EMAIL_REGEX },
						uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 6 }
	
				#大文字と小文字を区別しない、同等として扱った状態で重複が無いか確認
end
