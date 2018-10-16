if (strcmp(type, @encode(NSOperatingSystemVersion)) == 0) {
		NSOperatingSystemVersion argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithNSOperatingSystemVersion: argument inContext: context];
	}