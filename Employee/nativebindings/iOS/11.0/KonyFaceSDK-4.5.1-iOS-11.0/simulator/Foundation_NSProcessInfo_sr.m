if (strcmp(type, @encode(NSOperatingSystemVersion)) == 0) {
		NSOperatingSystemVersion returnValue = value.toNSOperatingSystemVersion;
		[invocation setReturnValue: &returnValue];
	}