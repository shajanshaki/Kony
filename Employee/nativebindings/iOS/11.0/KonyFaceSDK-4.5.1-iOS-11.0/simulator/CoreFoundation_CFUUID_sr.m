if (strcmp(type, @encode(CFUUIDBytes)) == 0) {
		CFUUIDBytes returnValue = value.toCFUUIDBytes;
		[invocation setReturnValue: &returnValue];
	}