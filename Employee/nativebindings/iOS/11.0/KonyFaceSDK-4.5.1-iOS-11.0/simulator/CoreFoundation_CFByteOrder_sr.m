if (strcmp(type, @encode(CFSwappedFloat64)) == 0) {
		CFSwappedFloat64 returnValue = value.toCFSwappedFloat64;
		[invocation setReturnValue: &returnValue];
	} else if (strcmp(type, @encode(CFSwappedFloat32)) == 0) {
		CFSwappedFloat32 returnValue = value.toCFSwappedFloat32;
		[invocation setReturnValue: &returnValue];
	}