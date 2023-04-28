require_relative "view"
require_relative "task"

class Controller
    def initialize(repository)
        @repository = repository
        @view = View.new
    end

    def create_task
        # Demander à view de damander à user la description et la stocker dans une variable
        description = @view.ask_description
        # Demander au model de créer une task et la stocker dans une variable
        task = Task.new(description)
        # Demander au repository de l'ajouter à tasks
        @repository.add(task)
    end

    def display_tasks
        # Demander à repo de renvoyer la liste de tasks et les stocker dans une variable
        tasks = @repository.all
        # Demander à la view d'afficher ces tasks
        @view.display(tasks)
    end

    def mark_as_done
        # Demander à view de demander au user l'index de la task et la stocker dans une variable
        index = @view.ask_index 
        # Demander au repository la task qui correspond à cette index et la stocker dans une variable 
        task = @repository.find(index)
        # Demander à task de mettre la task done
        task.done!
    end

    def remove_task
        # Demander à view de demander au user l'index de la task et la stocker dans une variable
        index = @view.ask_index 
        # Demander au repository d'enlever la task du tableau
        @repository.destroy(index)
    end



end