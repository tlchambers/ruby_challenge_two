=begin
* You're going to need three methods:
    * add
        * Takes two strings, the service and its password, as arguments
        * Stores the new service and its password
    * password_for
        * Takes one string, the service, as an argument
        * Returns the password for that service
    * services
        * Takes no arguments
        * Returns a list of all the services for which a password has been stored
        * Does not return all the passwords
* The passwords will be stored in hash
    * The keys are services
    * The values are the passwords
* This hash will need to be stored in an instance variable
=end

class PasswordManager
  def initialize
    @all_passwords = Hash.new
  end

  def add(service, password)
    if password.length > 7 && password =~ /[!@$%&]/
      return @all_passwords.store(service, password)
    end
  end

  def password_for(service)
    @all_passwords[service]
  end

  def services
    @all_passwords.keys
  end
end