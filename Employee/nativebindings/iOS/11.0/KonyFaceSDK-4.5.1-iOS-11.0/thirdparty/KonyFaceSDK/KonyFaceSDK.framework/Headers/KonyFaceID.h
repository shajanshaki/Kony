//
//  KonyFaceID.h
//  KonyFaceSDK
//
//  Created by Girish Lingarajappa Haniyamballi on 18/09/17.
//  Copyright © 2017 Girish Lingarajappa Haniyamballi. All rights reserved.
//

#import <Foundation/Foundation.h>

#define FACESDK_DEVICE_NOT_SUPPORTED        1       /* Face manager is not supported... */
#define FACESDK_INITIALIZING                2       /*Face manager is still initializing...*/
#define FACESDK_NOT_INITIALIZED             3       /*Face manager is not initialized. Don't forget to call initialize method*/
#define FACESDK_USER_ALREADY_REGISTERED     4       /*At least one user is already exists. Enroll action rejected.*/
#define FACESDK_ERROR                       5       /* generic error code. check error description */
#define FACESDK_USER_NOT_ENROLLED           6       /* User not enrolled */

@interface KonyFaceID : NSObject

/**
 Initialize EzioMobile SDK

 @param configuration configuration containing session code, provisioning response etc.
 @return return YES if succesfull
 */
-(BOOL) initializeSDKWithConfig:(NSDictionary*) configuration;
    
/**
 Initializes the app service.

 @param onSuccess onSuccess callback
 @param onError onError(NSError*) called on error
 */
-(void) initializeWithSuccessCallback:(void(^)()) onSuccess
              errorCallback :(void(^)(NSError *error))onError;
    
/**
 Enrolls a new face for Face ID recognizition.

 @param onSuccess onSuccess callback
 @param onError onError(NSError*) called on error
 */
-(void) enrollWithSuccessCallback:(void(^)()) onSuccess
                   errorCallback :(void(^)(NSError *error))onError;
    
/**
 Verifies a user face if already enrolled.

 @param onSuccess onSuccess callback
 @param onError onError(NSError*) called on error
 */
-(void) verifyWithSuccessCallback:(void(^)()) onSuccess
                   errorCallback :(void(^)(NSError *error))onError;
    
/**
 UnEnrols a previously enrolled face.

 @param onSuccess onSuccess callback
 @param onError onError(NSError*) called on error
 */
-(void) unEnrollWithSuccessCallback:(void(^)()) onSuccess
                     errorCallback :(void(^)(NSError *error))onError;
    
/**
 Cancel Enrollment if in progress
 */
-(void) cancelEnrollment;
    
/**
 Cancel verification is in progress
 */
-(void) cancelVerification;

/**
 Uninitialize the SDK.
 */
-(void) uninitialize;

/**
 Check if the face authentication engine is already initialized or not

 @return return 'YES' if the engine has bee ninitialized, 'NO' otherwise.
 */
-(BOOL) isConfigured;
    
/**
 Check if SDK is initialized

 @return return YES if SDK in initialized
 */
-(BOOL) isInitialized;
    
@end
