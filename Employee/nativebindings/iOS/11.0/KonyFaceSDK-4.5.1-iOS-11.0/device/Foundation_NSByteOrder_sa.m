if (strcmp(type, @encode(NSSwappedDouble)) == 0) {
		NSSwappedDouble argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithNSSwappedDouble: argument inContext: context];
	} else if (strcmp(type, @encode(NSSwappedFloat)) == 0) {
		NSSwappedFloat argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithNSSwappedFloat: argument inContext: context];
	}