require_relative "repository"
require_relative "task"
require_relative "router"
require_relative "controller"

repository = Repository.new

t1 = Task.new("Changer la couleur de ma voiture")
t2 = Task.new("Changer les plaquettes")

repository.add(t1)
repository.add(t2)

controller = Controller.new(repository)

router = Router.new(controller)

router.run