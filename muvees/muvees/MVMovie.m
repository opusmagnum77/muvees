//
//  MVMovie.m
//  muvees
//
//  Created by Daniel Adeyanju on 5/14/16.
//  Copyright © 2016 Daniel Adeyanju. All rights reserved.
//

#import "MVMovie.h"

@implementation MVMovie

-(instancetype)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if(self){
        [self parseDictionary:dictionary];
    }
    return self;
}


-(void)parseDictionary:(NSDictionary *)dictionary {
    
    self.title = dictionary[@"Title"];
    self.year = dictionary[@"Year"];
    self.imdbID = dictionary[@"imdbID"];
    self.type = dictionary[@"Type"];
    self.poster = dictionary[@"Poster"];
}
@end
