//
//  NSString+Helper.m
//
//  Created by Holger Hinzberg on 15.07.19.
//  Copyright © 2019 Holger Hinzberg. All rights reserved.
//

#import "NSString+Helper.h"

@implementation NSString (Helper)

- (NSRange) range
{
    return (NSRange){0, [self length]};
}

- (bool)caseInsensitiveContainsString:(NSString *)searchString
{
    NSRange theRange = [self rangeOfString:searchString options:NSCaseInsensitiveSearch];
    if(theRange.length > 0)
    {
        return true;
    }
    return false;
}

- (NSString *)left:(int)charactersCount
{
    if (charactersCount <= self.length)
    {
        NSRange theRange = NSMakeRange(0, charactersCount);
        return [self substringWithRange:theRange];
    }
    return @"";
}

- (NSString *)right:(int)charactersCount
{
    if (charactersCount <= self.length)
    {
        NSRange theRange = NSMakeRange([self length] - charactersCount, charactersCount);
        return [self substringWithRange:theRange];
    }
    return @"";
}

- (NSString *)mid:(int)startIndex characters:(int)charactersCount
{
    NSRange theRange = NSMakeRange(startIndex,charactersCount);
    return [self substringWithRange:theRange];
}

- (NSUInteger)indexOf:(NSString *)searchString
{
    NSRange theRange = [self rangeOfString:searchString options:NSCaseInsensitiveSearch];
    if(theRange.length > 0)
    {
        return theRange.location;
    }
    return -1;
}

- (NSUInteger)lastIndexOf:(NSString *)searchString
{
    NSRange theRange = [self rangeOfString:searchString options:NSCaseInsensitiveSearch|NSBackwardsSearch];
    if(theRange.length > 0)
    {
        return theRange.location;
    }
    return -1;
}

- (NSString *)after:(NSString *)searchString
{
    long startIndex = [self indexOf:searchString];
    if (startIndex > -1)
    {
        long remainingCharacters = self.length - startIndex - searchString.length;
        NSRange theRange = NSMakeRange(startIndex + searchString.length ,remainingCharacters);
        return [self substringWithRange:theRange];
    }
    
    return @"";
}


- (NSString *)before:(NSString *)searchString
{
    long endIndex = [self indexOf:searchString];
    
    if (endIndex > -1)
    {
        NSRange theRange = NSMakeRange(0, endIndex);
        return [self substringWithRange:theRange];
    }
    
    return @"";
}


- (NSString *)beforeLast:(NSString *)searchString
{
    long endIndex = [self lastIndexOf:searchString];
    
    if (endIndex > -1)
    {
        NSRange theRange = NSMakeRange(0, endIndex);
        return [self substringWithRange:theRange];
    }
    
    return @"";
}


- (NSString *)between:(NSString *)searchStringStart and :(NSString *)searchStringEnd
{
    NSString *betweenString = [self after:searchStringStart];
    betweenString = [betweenString before:searchStringEnd];
    return betweenString;
}


@end
