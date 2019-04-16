class User

  attr_accessor :email, :age
  @@all_users = []

  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@all_users << self
  end

  def self.all
    return @@all_users.inspect
  end

  def self.find_by_email(email)
    @@all_users.each {|user| return user if user.email == email}
  else puts "aucun utilisateur n'a cet email"
  end

end
