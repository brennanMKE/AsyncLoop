public typealias DoneClosure = () -> Void

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

public struct AsyncWorkItem<WorkElement> {
    let worker: (WorkElement) -> Void
    let completionHandler: () -> Void
}

public extension Sequence {
    func asyncLoop<T: Sequence.Element>(options: AsyncLoopOptions? = nil, workItem: AsyncWorkItem<T>) -> DoneClosure {
        fatalError()
    }
}

public extension Collection {
    func asyncLoop<T: Collection.Element>(options: AsyncLoopOptions? = nil, workItem: AsyncWorkItem<T>) -> DoneClosure {
        fatalError()
    }
}

public extension Array {
    func asyncLoop<T: Array.Element>(options: AsyncLoopOptions? = nil, workItem: AsyncWorkItem<T>) -> DoneClosure {
        fatalError()
    }
}
