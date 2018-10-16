if (strcmp(type, @encode(CFGregorianUnits)) == 0) {
		CFGregorianUnits returnValue = value.toCFGregorianUnits;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CFGregorianDate)) == 0) {
		CFGregorianDate returnValue = value.toCFGregorianDate;
		[invocation setReturnValue: &returnValue];
	}