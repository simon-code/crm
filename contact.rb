class Contact

attr_accessor :first_name, :last_name, :email, :note
attr_reader :id


@@contacts = []
@@id = 1000

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id

    #3. increment the @@id
    @@id += 1
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def self.create(first_name, last_name, email, note = "N/A")
#1. make a new contact
    new_contact = new(first_name, last_name, email, note)
#2. add the new contact to the contact array
    @@contacts << new_contact

#4. return the new contact we created
    new_contact

  end

  def self.all
    @@contacts

  end

end
