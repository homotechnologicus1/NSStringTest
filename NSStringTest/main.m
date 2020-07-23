//
//  main.m
//  NSStringTest
//
//  Created by joe_mac on 07/23/2020.
//  Copyright © 2020 Joe K. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSString *str = [[NSString alloc]init];
//        str = @"This is NSString";
        
//        NSString *str = [[NSString alloc]initWithString:@"This is NSString"];
        // convenience method: initWith로 시작
        
        NSString *str = @"This is NSString";
        NSLog(@"str : %@", str);
        
        // immutable class
        NSString *result;
        result = [str substringFromIndex:6];
        result = [str substringToIndex:3];
        
        // method chain
        result = [[str substringToIndex:11]substringFromIndex:8];
        result = [[str substringFromIndex:8]substringToIndex:3];
        
        result = [str substringWithRange:NSMakeRange(8, 3)];
        
        result = [[str substringWithRange:NSMakeRange(8, 3)]lowercaseString];
        NSLog(@"result : %@", result);

        
        // NSMutableString
        // convenience method: stringWith로 시작
        NSMutableString *mstr = [NSMutableString stringWithString:str];
        
        // appendString has no return value(void) (∵ NSMutableString)
        // making changes to itself
        [mstr appendString:@" and NSMutableString"];
        [mstr insertString:@"Mutable " atIndex:8];
        NSLog(@"mstr : %@", mstr);
        
    }
    return 0;
}
