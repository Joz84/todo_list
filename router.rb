# Creat : create a task
# Read : display all tasks
# Update : mark as done
# Delete : remove a task


class Router

    def initialize(controller)
        @controller = controller
    end

    def run
        loop do
            puts "------------------------"
            puts "Your choice?"
            puts "0 : quit"
            puts "1 : create a task"
            puts "2 : display all tasks"
            puts "3 : mark as done"
            puts "4 : remove a task"
            puts "------------------------"

            action = gets.chomp.to_i

            case action
            when 0 then break
            when 1 then @controller.create_task
            when 2 then @controller.display_tasks
            when 3 then @controller.mark_as_done
            when 4 then @controller.remove_task
            else
                puts "Choice a real option (0, 1, 2, 3 or 4)"
            end

        end
    end


end