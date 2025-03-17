//
//  PWCUtils.h
//  PushwooshCore
//
//  Created by André Kis on 10.03.25.
//  Copyright © 2025 Pushwoosh. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PWCUtils : NSObject

+ (NSString *)uniqueGlobalDeviceIdentifier;

+ (BOOL)isValidHwid:(NSString*)hwid;

+ (NSString *)preferredLanguage;

+ (BOOL)getAPSProductionStatus:(BOOL)canShowAlert;

@end

NS_ASSUME_NONNULL_END
