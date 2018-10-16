#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSExtensionItem (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSExtensionItem class], @protocol(NSExtensionItemInstanceExports));
	class_addProtocol([NSExtensionItem class], @protocol(NSExtensionItemClassExports));
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
	p = (void*) &NSExtensionItemAttributedTitleKey;
	if (p != NULL) context[@"NSExtensionItemAttributedTitleKey"] = NSExtensionItemAttributedTitleKey;
	p = (void*) &NSExtensionItemAttributedContentTextKey;
	if (p != NULL) context[@"NSExtensionItemAttributedContentTextKey"] = NSExtensionItemAttributedContentTextKey;
	p = (void*) &NSExtensionItemAttachmentsKey;
	if (p != NULL) context[@"NSExtensionItemAttachmentsKey"] = NSExtensionItemAttachmentsKey;
}
void load_Foundation_NSExtensionItem_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
