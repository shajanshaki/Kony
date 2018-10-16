#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSMetadata_symbols(JSContext*);
@protocol NSMetadataQueryResultGroupInstanceExports<JSExport>
@property (readonly,copy) NSString * attribute;
@property (readonly) NSUInteger resultCount;
@property (readonly,copy) NSArray * results;
@property (readonly,retain) id value;
@property (readonly,copy) NSArray * subgroups;
-(id) resultAtIndex: (NSUInteger) idx ;
@end
@protocol NSMetadataQueryResultGroupClassExports<JSExport>
@end
@protocol NSMetadataItemInstanceExports<JSExport>
@property (readonly,copy) NSArray * attributes;
-(NSDictionary *) valuesForAttributes: (NSArray *) keys ;
-(id) valueForAttribute: (NSString *) key ;
@end
@protocol NSMetadataItemClassExports<JSExport>
@end
@protocol NSMetadataQueryAttributeValueTupleInstanceExports<JSExport>
@property (readonly) NSUInteger count;
@property (readonly,copy) NSString * attribute;
@property (readonly,retain) id value;
@end
@protocol NSMetadataQueryAttributeValueTupleClassExports<JSExport>
@end
@protocol NSMetadataQueryInstanceExports<JSExport>
@property (copy) NSPredicate * predicate;
@property (readonly,copy) NSDictionary * valueLists;
@property (readonly,copy) NSArray * groupedResults;
@property () NSTimeInterval notificationBatchingInterval;
@property (copy) NSArray * searchScopes;
@property (getter=isStarted,readonly) BOOL started;
@property (copy) NSArray * searchItems;
@property (getter=isGathering,readonly) BOOL gathering;
@property (readonly,copy) NSArray * results;
@property (copy) NSArray * sortDescriptors;
@property (retain) NSOperationQueue * operationQueue;
@property (getter=isStopped,readonly) BOOL stopped;
@property (assign) id delegate;
@property (copy) NSArray * valueListAttributes;
@property (readonly) NSUInteger resultCount;
@property (copy) NSArray * groupingAttributes;
-(void) enableUpdates;
-(NSUInteger) indexOfResult: (id) result ;
-(BOOL) startQuery;
-(id) resultAtIndex: (NSUInteger) idx ;
JSExportAs(enumerateResultsUsingBlock,
-(void) jsenumerateResultsUsingBlock: (JSValue *) block );
-(void) disableUpdates;
-(id) valueOfAttribute: (NSString *) attrName forResultAtIndex: (NSUInteger) idx ;
-(void) stopQuery;
JSExportAs(enumerateResultsWithOptionsUsingBlock,
-(void) jsenumerateResultsWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
@end
@protocol NSMetadataQueryClassExports<JSExport>
@end
@protocol NSMetadataQueryDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(id) metadataQuery: (NSMetadataQuery *) query replacementObjectForResultObject: (NSMetadataItem *) result ;
-(id) metadataQuery: (NSMetadataQuery *) query replacementValueForAttribute: (NSString *) attrName value: (id) attrValue ;
@end
@protocol NSMetadataQueryDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop