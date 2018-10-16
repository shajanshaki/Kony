if (strcmp(type, @encode(CFGregorianUnits)) == 0) {
		CFGregorianUnits argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFGregorianUnits: argument inContext: context];
	} else if (strcmp(type, @encode(CFGregorianDate)) == 0) {
		CFGregorianDate argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFGregorianDate: argument inContext: context];
	}