//
//  PWCPreferences.h
//  PushwooshCore
//
//  Created by André Kis on 07.03.25.
//  Copyright © 2025 Pushwoosh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PWCPreferences : NSObject

@property (copy, readonly) NSString *appCode;
@property (copy, readonly) NSString *userId;
@property (copy, readonly) NSString *hwid;
@property (copy, readonly) NSString *baseUrl;

@end

NS_ASSUME_NONNULL_END
