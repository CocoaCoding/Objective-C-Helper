//
//  NSString+Helper.h
//
//  Created by Holger Hinzberg on 15.07.19.
//  Copyright © 2019 Holger Hinzberg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Helper)

- (NSRange) range;
- (bool) caseInsensitiveContainsString:(NSString *)searchString;
- (NSString *) left:(int)charactersCount;
- (NSString *) right:(int)charactersCount;
- (NSString *) mid:(int)startIndex characters:(int)charactersCount;
- (NSUInteger) indexOf:(NSString *)searchString;
- (NSUInteger) lastIndexOf:(NSString *)searchString;
- (NSString *) after:(NSString *)searchString;
- (NSString *) before:(NSString *)searchString;
- (NSString *) beforeLast:(NSString *)searchString;
- (NSString *) between:(NSString *)searchStringStart and :(NSString *)searchStringEnd;

@end

NS_ASSUME_NONNULL_END
