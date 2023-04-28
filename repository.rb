class Repository
    def initialize
        @tasks = []
    end

    # CREATE
    def add(task)
        @tasks << task
    end

    # READ
    def all
        @tasks
    end

    # UPDATE
    def find(index)
        @tasks[index]
    end

    # DELETE
    def destroy(index)
        @tasks.delete_at(index)
    end
end