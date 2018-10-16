if (strcmp(type, @encode(CFSwappedFloat64)) == 0) {
		CFSwappedFloat64 argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFSwappedFloat64: argument inContext: context];
	} else if (strcmp(type, @encode(CFSwappedFloat32)) == 0) {
		CFSwappedFloat32 argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithCFSwappedFloat32: argument inContext: context];
	}