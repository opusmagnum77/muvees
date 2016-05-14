//
//  MVMovie.h
//  muvees
//
//  Created by Daniel Adeyanju on 5/14/16.
//  Copyright © 2016 Daniel Adeyanju. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MVMovie : NSObject
//Title Year imdbID Type Poster

@property(nonatomic, strong) NSString * title;
@property(nonatomic, strong) NSString * year;
@property(nonatomic, strong) NSString * imdbID;
@property(nonatomic, strong) NSString * type;
@property(nonatomic, strong) NSString * poster;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
-(void)parseDictionary: (NSDictionary *)dictionary;
@end
