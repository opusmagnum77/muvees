
//
//  APIClient.m
//  muvees
//
//  Created by Daniel Adeyanju on 5/13/16.
//  Copyright © 2016 Daniel Adeyanju. All rights reserved.
//

#import "APIClient.h"
#import <AFNetworking/AFNetworking.h>

@interface APIClient()

@end
@implementation APIClient
NSString * baseURL = @"https://www.omdbapi.com/?";

+(void)searchString: (NSString *) string withCompletion: (void(^)(NSArray*))completionBlock{
    
    NSString * queryUrl = [NSString stringWithFormat:@"%@s=%@&page=1", baseURL, string];
    
    AFHTTPSessionManager * manager = [AFHTTPSessionManager manager];
    [manager GET:queryUrl parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        //loop through returned array (within the "Search" dictionary)
        NSArray * searchResults = responseObject[@"Search"];
        NSMutableArray *searchResultObjects = [[NSMutableArray alloc]init];
        for (NSDictionary * result in searchResults){
            MVMovie * currentMovie = [[MVMovie alloc]initWithDictionary:result];
            [searchResultObjects addObject:currentMovie];
        }
        completionBlock(searchResultObjects);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"Fail: %@",error.localizedDescription);
    }];
    
    
    
    
}

@end
