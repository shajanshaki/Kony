#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSException (NSExceptionNSExceptionRaisingConveniencesCategoryExports)
+(void) jsraise: (NSExceptionName) name format: (NSString *) format arguments: (NSArray *) args 
{
	if ([args count] == 0) [self raise: name format: format ];
	else if ([args count] == 1) [self raise: name format: format , args[0]];
	else if ([args count] == 2) [self raise: name format: format , args[0], args[1]];
	else if ([args count] == 3) [self raise: name format: format , args[0], args[1], args[2]];
	else if ([args count] == 4) [self raise: name format: format , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) [self raise: name format: format , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) [self raise: name format: format , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) [self raise: name format: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) [self raise: name format: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) [self raise: name format: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) [self raise: name format: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
}
@end
@implementation NSAssertionHandler (Exports)
-(void) jshandleFailureInFunction: (NSString *) functionName file: (NSString *) fileName lineNumber: (NSInteger) line description: (NSString *) format arguments: (NSArray *) args 
{
	if ([args count] == 0) [self handleFailureInFunction: functionName file: fileName lineNumber: line description: format ];
	else if ([args count] == 1) [self handleFailureInFunction: functionName file: fileName lineNumber: line description: format , args[0]];
	else if ([args count] == 2) [self handleFailureInFunction: functionName file: fileName lineNumber: line description: format , args[0], args[1]];
	else if ([args count] == 3) [self handleFailureInFunction: functionName file: fileName lineNumber: line description: format , args[0], args[1], args[2]];
	else if ([args count] == 4) [self handleFailureInFunction: functionName file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) [self handleFailureInFunction: functionName file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) [self handleFailureInFunction: functionName file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) [self handleFailureInFunction: functionName file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) [self handleFailureInFunction: functionName file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) [self handleFailureInFunction: functionName file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) [self handleFailureInFunction: functionName file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
}
-(void) jshandleFailureInMethod: (NSString *) selector object: (id) object file: (NSString *) fileName lineNumber: (NSInteger) line description: (NSString *) format arguments: (NSArray *) args 
{
	SEL selector_ = NSSelectorFromString(selector);
	if ([args count] == 0) [self handleFailureInMethod: selector_ object: object file: fileName lineNumber: line description: format ];
	else if ([args count] == 1) [self handleFailureInMethod: selector_ object: object file: fileName lineNumber: line description: format , args[0]];
	else if ([args count] == 2) [self handleFailureInMethod: selector_ object: object file: fileName lineNumber: line description: format , args[0], args[1]];
	else if ([args count] == 3) [self handleFailureInMethod: selector_ object: object file: fileName lineNumber: line description: format , args[0], args[1], args[2]];
	else if ([args count] == 4) [self handleFailureInMethod: selector_ object: object file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3]];
	else if ([args count] == 5) [self handleFailureInMethod: selector_ object: object file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4]];
	else if ([args count] == 6) [self handleFailureInMethod: selector_ object: object file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4], args[5]];
	else if ([args count] == 7) [self handleFailureInMethod: selector_ object: object file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6]];
	else if ([args count] == 8) [self handleFailureInMethod: selector_ object: object file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]];
	else if ([args count] == 9) [self handleFailureInMethod: selector_ object: object file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8]];
	else if ([args count] >= 10) [self handleFailureInMethod: selector_ object: object file: fileName lineNumber: line description: format , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]];
}
@end
@implementation NSException (Exports)
-(id) jsinitWithName: (NSExceptionName) aName reason: (NSString *) aReason userInfo: (NSDictionary *) aUserInfo 
{
	id resultVal__;
	resultVal__ = [[self initWithName: aName reason: aReason userInfo: aUserInfo ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSException class], @protocol(NSExceptionNSExceptionRaisingConveniencesCategoryInstanceExports));
	class_addProtocol([NSException class], @protocol(NSExceptionNSExceptionRaisingConveniencesCategoryClassExports));
	class_addProtocol([NSAssertionHandler class], @protocol(NSAssertionHandlerInstanceExports));
	class_addProtocol([NSAssertionHandler class], @protocol(NSAssertionHandlerClassExports));
	class_addProtocol([NSException class], @protocol(NSExceptionInstanceExports));
	class_addProtocol([NSException class], @protocol(NSExceptionClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSMallocException;
	if (p != NULL) context[@"NSMallocException"] = NSMallocException;
	p = (void*) &NSInvalidReceivePortException;
	if (p != NULL) context[@"NSInvalidReceivePortException"] = NSInvalidReceivePortException;
	p = (void*) &NSObjectInaccessibleException;
	if (p != NULL) context[@"NSObjectInaccessibleException"] = NSObjectInaccessibleException;
	p = (void*) &NSPortReceiveException;
	if (p != NULL) context[@"NSPortReceiveException"] = NSPortReceiveException;
	p = (void*) &NSOldStyleException;
	if (p != NULL) context[@"NSOldStyleException"] = NSOldStyleException;
	p = (void*) &NSRangeException;
	if (p != NULL) context[@"NSRangeException"] = NSRangeException;
	p = (void*) &NSInvalidSendPortException;
	if (p != NULL) context[@"NSInvalidSendPortException"] = NSInvalidSendPortException;
	p = (void*) &NSInvalidArgumentException;
	if (p != NULL) context[@"NSInvalidArgumentException"] = NSInvalidArgumentException;
	p = (void*) &NSAssertionHandlerKey;
	if (p != NULL) context[@"NSAssertionHandlerKey"] = NSAssertionHandlerKey;
	p = (void*) &NSInternalInconsistencyException;
	if (p != NULL) context[@"NSInternalInconsistencyException"] = NSInternalInconsistencyException;
	p = (void*) &NSPortTimeoutException;
	if (p != NULL) context[@"NSPortTimeoutException"] = NSPortTimeoutException;
	p = (void*) &NSObjectNotAvailableException;
	if (p != NULL) context[@"NSObjectNotAvailableException"] = NSObjectNotAvailableException;
	p = (void*) &NSDestinationInvalidException;
	if (p != NULL) context[@"NSDestinationInvalidException"] = NSDestinationInvalidException;
	p = (void*) &NSPortSendException;
	if (p != NULL) context[@"NSPortSendException"] = NSPortSendException;
	p = (void*) &NSGenericException;
	if (p != NULL) context[@"NSGenericException"] = NSGenericException;
}
void load_Foundation_NSException_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
