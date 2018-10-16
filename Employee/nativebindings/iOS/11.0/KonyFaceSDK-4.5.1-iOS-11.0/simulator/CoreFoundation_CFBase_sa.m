if (strcmp(type, @encode(CFRange)) == 0) {
		CFRange argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFRange: argument inContext: context];
	}