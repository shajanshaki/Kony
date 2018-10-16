if (strcmp(type, @encode(CFUUIDBytes)) == 0) {
		CFUUIDBytes argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFUUIDBytes: argument inContext: context];
	}