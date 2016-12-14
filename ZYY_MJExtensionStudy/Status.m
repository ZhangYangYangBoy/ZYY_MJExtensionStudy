//
//  MYTestModel.m
//  ZYY_MJExtensionStudy
//
//  Created by Tech-zhangyangyang on 16/8/17.
//  Copyright © 2016年 Tech-zhangyangyang. All rights reserved.
//

#import "Status.h"
#import "NSObject+MJKeyValue.h"

@implementation User

@end

@implementation Status

@end


@implementation Ad

@end


@implementation StatusResult

+ (NSDictionary *)mj_objectClassInArray {
    
   return  @{
      @"statuses" : @"Status",
      // @"statuses" : [Status class],
      @"ads" : @"Ad"
      // @"ads" : [Ad class]
      };
}

@end