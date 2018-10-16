#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([NSMetadataQueryResultGroup class], @protocol(NSMetadataQueryResultGroupInstanceExports));
	class_addProtocol([NSMetadataQueryResultGroup class], @protocol(NSMetadataQueryResultGroupClassExports));
	class_addProtocol([NSMetadataItem class], @protocol(NSMetadataItemInstanceExports));
	class_addProtocol([NSMetadataItem class], @protocol(NSMetadataItemClassExports));
	class_addProtocol([NSMetadataQueryAttributeValueTuple class], @protocol(NSMetadataQueryAttributeValueTupleInstanceExports));
	class_addProtocol([NSMetadataQueryAttributeValueTuple class], @protocol(NSMetadataQueryAttributeValueTupleClassExports));
	class_addProtocol([NSMetadataQuery class], @protocol(NSMetadataQueryInstanceExports));
	class_addProtocol([NSMetadataQuery class], @protocol(NSMetadataQueryClassExports));
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
	p = (void*) &NSMetadataQueryResultContentRelevanceAttribute;
	if (p != NULL) context[@"NSMetadataQueryResultContentRelevanceAttribute"] = NSMetadataQueryResultContentRelevanceAttribute;
	p = (void*) &NSMetadataQueryDidUpdateNotification;
	if (p != NULL) context[@"NSMetadataQueryDidUpdateNotification"] = NSMetadataQueryDidUpdateNotification;
	p = (void*) &NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope;
	if (p != NULL) context[@"NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope"] = NSMetadataQueryAccessibleUbiquitousExternalDocumentsScope;
	p = (void*) &NSMetadataQueryDidFinishGatheringNotification;
	if (p != NULL) context[@"NSMetadataQueryDidFinishGatheringNotification"] = NSMetadataQueryDidFinishGatheringNotification;
	p = (void*) &NSMetadataQueryUbiquitousDocumentsScope;
	if (p != NULL) context[@"NSMetadataQueryUbiquitousDocumentsScope"] = NSMetadataQueryUbiquitousDocumentsScope;
	p = (void*) &NSMetadataQueryGatheringProgressNotification;
	if (p != NULL) context[@"NSMetadataQueryGatheringProgressNotification"] = NSMetadataQueryGatheringProgressNotification;
	p = (void*) &NSMetadataQueryUbiquitousDataScope;
	if (p != NULL) context[@"NSMetadataQueryUbiquitousDataScope"] = NSMetadataQueryUbiquitousDataScope;
	p = (void*) &NSMetadataQueryDidStartGatheringNotification;
	if (p != NULL) context[@"NSMetadataQueryDidStartGatheringNotification"] = NSMetadataQueryDidStartGatheringNotification;
}
void Foundation_NSMetadataProtocols()
{
	(void)@protocol(NSMetadataQueryDelegate);
}
void load_Foundation_NSMetadata_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
