import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todo", use: todoController.index)
    router.post("todo", use: todoController.create)
    router.delete("todo", Todo.parameter, use: todoController.delete)
}
