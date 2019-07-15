//
//  main.m
//  Objective-C-Helper
//
//  Created by Holger Hinzberg on 15.07.19.
//  Copyright © 2019 Holger Hinzberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Helper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        NSString *text = @"<h1>Hello World! How are you?</h1>";
        
        // Returns : true
        bool b = [text caseInsensitiveContainsString: @"<H1>"];
        
        // Returns : <h1>
        NSString *start = [text left:4];
        
        // Returns : </h1>
        NSString *end = [text right:5];
        
        // Returns : Hello World! How are you?</h1>
        NSString *after = [text after:@"<h1>"];
        
        // Returns : <h1>Hello World! How are you?
        NSString *before = [text before:@"</h1>"];
        
        // Returns : <h1>Hello World! How are y
        NSString *beforeLast = [text beforeLast:@"o"];
        
        // Returns : Hello World! How are you?
        NSString *between = [text between:@"<h1>" and: @"</h1>"];
    }
    return 0;
}
