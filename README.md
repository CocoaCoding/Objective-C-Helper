#  Helper functions for Objective-C code

Right now it is just a catagory for NSString to made string manipulation a bit more easy.

## Sample useage

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

## Tech Stack

- Objective-C
- Xcode
- macOS
