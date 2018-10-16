#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSUndoManager_symbols(JSContext*);
@protocol NSUndoManagerInstanceExports<JSExport>
@property (getter=isUndoing,readonly) BOOL undoing;
@property (readonly) NSInteger groupingLevel;
@property (readonly,copy) NSString * undoActionName;
@property (readonly,copy) NSString * undoMenuItemTitle;
@property (readonly) BOOL canUndo;
@property (copy) NSArray * runLoopModes;
@property () NSUInteger levelsOfUndo;
@property (getter=isRedoing,readonly) BOOL redoing;
@property () BOOL groupsByEvent;
@property (readonly) BOOL undoActionIsDiscardable;
@property (getter=isUndoRegistrationEnabled,readonly) BOOL undoRegistrationEnabled;
@property (readonly,copy) NSString * redoMenuItemTitle;
@property (readonly) BOOL canRedo;
@property (readonly,copy) NSString * redoActionName;
@property (readonly) BOOL redoActionIsDiscardable;
-(NSString *) undoMenuTitleForUndoActionName: (NSString *) actionName ;
-(void) beginUndoGrouping;
-(void) undoNestedGroup;
-(void) redo;
-(void) setActionIsDiscardable: (BOOL) discardable ;
-(NSString *) redoMenuTitleForUndoActionName: (NSString *) actionName ;
JSExportAs(registerUndoWithTargetHandler,
-(void) jsregisterUndoWithTarget: (id) target handler: (JSValue *) undoHandler );
-(void) removeAllActions;
-(void) undo;
-(id) prepareWithInvocationTarget: (id) target ;
-(void) setActionName: (NSString *) actionName ;
-(void) disableUndoRegistration;
-(void) endUndoGrouping;
JSExportAs(registerUndoWithTargetSelectorObject,
-(void) jsregisterUndoWithTarget: (id) target selector: (NSString *) selector object: (id) anObject );
-(void) enableUndoRegistration;
-(void) removeAllActionsWithTarget: (id) target ;
@end
@protocol NSUndoManagerClassExports<JSExport>
@end
#pragma clang diagnostic pop