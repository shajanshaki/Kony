if (strcmp(type, @encode(CFStreamError)) == 0) {
		CFStreamError argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFStreamError: argument inContext: context];
	}