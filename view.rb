class View


    def display(tasks)
        tasks.each_with_index do |task, index|
            cross = task.done? ? "[X]" : "[ ]"
            puts "#{index + 1} - #{cross} : #{task.description}"
        end
    end

    def ask_description
        puts "Description please?"
        print "> "
        gets.chomp
    end

    def ask_index 
        puts "Index please?"
        print "> "
        gets.chomp.to_i - 1     
    end
end