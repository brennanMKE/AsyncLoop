public typealias DoneClosure = () -> Void
public typealias AllDoneClosure = () -> Void

/// Limit of concurrent work items the async loop will run
public enum AsyncLoopLimit {
    case none
    case count(Int)
}

/// Options for an async loop
public struct AsyncLoopOptions {
    let limit: AsyncLoopLimit

    public init() {
        limit = .none
    }
}

public struct AsyncWorkItem<Element> {
    typealias WorkItem = (Element) -> Void
    let execute: WorkItem
    let done: DoneClosure

    init(execute: @escaping WorkItem, done: @escaping DoneClosure) {
        self.execute = execute
        self.done = done
    }
}

public extension Sequence {
    func asyncLoop(options: AsyncLoopOptions? = nil, workItem: AsyncWorkItem<Self.Element>) -> AllDoneClosure {
        fatalError()
    }
}
