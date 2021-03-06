//  Copyright (c) 2015 Rob Rix. All rights reserved.

// MARK: - Unit

/// Returns its argument as an `Optional<T>`.
@available(*, deprecated, message: "Use Optional.Some")
public func unit<T>(_ x: T) -> T? {
	return x
}


// MARK: - Optional conjunction

/// Returns a tuple of two `Optional` values, or `nil` if either or both are `nil`.
public func &&& <T, U> (left: T?, right: @autoclosure () -> U?) -> (T, U)? {
	if let x = left, let y = right() {
		return (x, y)
	}
	return nil
}


// MARK: - Operators

/// Same associativity and precedence as &&.
infix operator &&& : LogicalConjunctionPrecedence
