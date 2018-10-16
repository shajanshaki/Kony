#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSDecimalNumber (Exports)
-(id) jsinitWithString: (NSString *) numberValue 
{
	id resultVal__;
	resultVal__ = [[self initWithString: numberValue ] autorelease];
	return resultVal__;
}
-(id) jsinitWithMantissa: (unsigned long long) mantissa exponent: (short) exponent isNegative: (BOOL) flag 
{
	id resultVal__;
	resultVal__ = [[self initWithMantissa: mantissa exponent: exponent isNegative: flag ] autorelease];
	return resultVal__;
}
-(id) jsinitWithString: (NSString *) numberValue locale: (id) locale 
{
	id resultVal__;
	resultVal__ = [[self initWithString: numberValue locale: locale ] autorelease];
	return resultVal__;
}
@end
@implementation NSDecimalNumberHandler (Exports)
-(NSDecimalNumber *) jsexceptionDuringOperation: (NSString *) operation error: (NSCalculationError) error leftOperand: (NSDecimalNumber *) leftOperand rightOperand: (NSDecimalNumber *) rightOperand 
{
	SEL operation_ = NSSelectorFromString(operation);
	NSDecimalNumber * resultVal__;
	resultVal__ = [self exceptionDuringOperation: operation_ error: error leftOperand: leftOperand rightOperand: rightOperand ];
	return resultVal__;
}
-(id) jsinitWithRoundingMode: (NSRoundingMode) roundingMode scale: (short) scale raiseOnExactness: (BOOL) exact raiseOnOverflow: (BOOL) overflow raiseOnUnderflow: (BOOL) underflow raiseOnDivideByZero: (BOOL) divideByZero 
{
	id resultVal__;
	resultVal__ = [[self initWithRoundingMode: roundingMode scale: scale raiseOnExactness: exact raiseOnOverflow: overflow raiseOnUnderflow: underflow raiseOnDivideByZero: divideByZero ] autorelease];
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
	class_addProtocol([NSScanner class], @protocol(NSScannerNSDecimalNumberScanningCategoryInstanceExports));
	class_addProtocol([NSScanner class], @protocol(NSScannerNSDecimalNumberScanningCategoryClassExports));
	class_addProtocol([NSDecimalNumber class], @protocol(NSDecimalNumberInstanceExports));
	class_addProtocol([NSDecimalNumber class], @protocol(NSDecimalNumberClassExports));
	class_addProtocol([NSDecimalNumberHandler class], @protocol(NSDecimalNumberHandlerInstanceExports));
	class_addProtocol([NSDecimalNumberHandler class], @protocol(NSDecimalNumberHandlerClassExports));
	class_addProtocol([NSNumber class], @protocol(NSNumberNSDecimalNumberExtensionsCategoryInstanceExports));
	class_addProtocol([NSNumber class], @protocol(NSNumberNSDecimalNumberExtensionsCategoryClassExports));
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
	p = (void*) &NSDecimalNumberExactnessException;
	if (p != NULL) context[@"NSDecimalNumberExactnessException"] = NSDecimalNumberExactnessException;
	p = (void*) &NSDecimalNumberOverflowException;
	if (p != NULL) context[@"NSDecimalNumberOverflowException"] = NSDecimalNumberOverflowException;
	p = (void*) &NSDecimalNumberDivideByZeroException;
	if (p != NULL) context[@"NSDecimalNumberDivideByZeroException"] = NSDecimalNumberDivideByZeroException;
	p = (void*) &NSDecimalNumberUnderflowException;
	if (p != NULL) context[@"NSDecimalNumberUnderflowException"] = NSDecimalNumberUnderflowException;
}
void Foundation_NSDecimalNumberProtocols()
{
	(void)@protocol(NSDecimalNumberBehaviors);
}
void load_Foundation_NSDecimalNumber_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
