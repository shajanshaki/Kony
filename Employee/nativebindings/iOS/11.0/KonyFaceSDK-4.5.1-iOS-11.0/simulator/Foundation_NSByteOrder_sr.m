if (strcmp(type, @encode(NSSwappedDouble)) == 0) {
		NSSwappedDouble returnValue = value.toNSSwappedDouble;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(NSSwappedFloat)) == 0) {
		NSSwappedFloat returnValue = value.toNSSwappedFloat;
		[invocation setReturnValue: &returnValue];
	}