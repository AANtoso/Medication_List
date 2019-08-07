class CLI

  def call
    puts " "
    puts "Welcome Patients!"
    puts "Here is a lost of medications."
    puts " "
    pick_medication
  end

  def pick_medication
    input = ""
    while input != "exit" do

      puts "Choose your medication."
      puts "Enter a name or type 'exit' to exit."
      puts " "
    end
  end

end
