if (strcmp(type, @encode(CFRange)) == 0) {
		CFRange returnValue = value.toCFRange;
		[invocation setReturnValue: &returnValue];
	}