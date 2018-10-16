if (strcmp(type, @encode(CFStreamError)) == 0) {
		CFStreamError returnValue = value.toCFStreamError;
		[invocation setReturnValue: &returnValue];
	}