# ruby_challenge_two
Ruby Foundation Chapter 2: Arrays, Hashes, Classes


Task:
* Build a password manager
* Services & passwords are stored as a Hash
* Allow you to add new, validated, passwords
* Allow you to view a specific password
* Allow you to see a list of all the services for which a password has been stored.

Problem to solve:
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




class PasswordManager
   def initialize
       @all_passwords  = Hash.new
  end

Takes two strings as args
 1 def add(service, password)
    return all_passwords.store(“service”, “password”)
  end

Takes one string as an arg
2 def password_for(service)
    all_passwords[service]
  end

Takes no args
3 def services
    all_passwords = { “service” => “password”
    }
  end
end



# This should create an instance of password manager
password_manager = PasswordManager.new

# this should allow me to add a passwords
password_manager.add("Acebook", "password123")
password_manager.add("MakersBnB", "superpassword123")

# this should show me an array of all services
password_manager.services

