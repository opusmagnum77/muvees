//
//  APIClient.h
//  muvees
//
//  Created by Daniel Adeyanju on 5/13/16.
//  Copyright © 2016 Daniel Adeyanju. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APIClient : NSObject
extern NSString const * baseURL;

+(void)searchString: (NSString *) string withCompletion: (void(^)(NSDictionary*))completionBlock;

@end
