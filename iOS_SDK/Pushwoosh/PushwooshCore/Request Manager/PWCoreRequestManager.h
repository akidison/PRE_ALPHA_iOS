//
//  PWCoreRequestManager.h
//  PushwooshCore
//
//  Created by André Kis on 12.03.25.
//  Copyright © 2025 Pushwoosh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PushwooshCore/PWCoreRequest.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^PWRequestDownloadCompleteBlock)(NSString *, NSError *);

@protocol IPWCoreRequestManager <NSObject>

- (void)sendRequest:(PWCoreRequest *)request completion:(void (^)(NSError *error))completion;

@end

@interface PWCoreRequestManager : NSObject <IPWCoreRequestManager>

+ (PWCoreRequestManager *)sharedManager;

@end

NS_ASSUME_NONNULL_END
