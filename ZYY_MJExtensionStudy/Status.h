//
//  MYTestModel.h
//  ZYY_MJExtensionStudy
//
//  Created by Tech-zhangyangyang on 16/8/17.
//  Copyright © 2016年 Tech-zhangyangyang. All rights reserved.
//

#import <Foundation/Foundation.h>

//@interface User : NSObject
//
//@property (nonatomic, strong)IB_DESIGNABLE NSString *icon;
//@property (nonatomic, assign) NSString *city;
//
//@end
//
//@interface Status : NSObject
//
//@property (nonatomic, strong) NSString *text;
//@property (nonatomic, strong) NSString *user;
//@property (nonatomic, strong) NSString *city;
//
//@end


typedef enum {
    SexMale,
    SexFemale
} Sex;

@interface User : NSObject
@property (copy,   nonatomic) NSString *name;
@property (copy,   nonatomic) NSString *icon;
@property (assign, nonatomic) int age;
@property (assign, nonatomic) double height;
@property (strong, nonatomic) NSNumber *money;
@property (assign, nonatomic) Sex sex;
@end


@interface Status : NSObject
/** 微博文本内容 */
@property (copy, nonatomic) NSString *text;
/** 微博作者 */
@property (strong, nonatomic) User *user;
/** 转发的微博 */
@property (strong, nonatomic) Status *retweetedStatus;

@end



@interface Ad : NSObject
@property (copy, nonatomic) NSString *image;
@property (copy, nonatomic) NSString *url;
@end

@interface StatusResult : NSObject

/** Contatins status model */
@property (strong, nonatomic) NSMutableArray *statuses;
/** Contatins ad model */
@property (strong, nonatomic) NSArray *ads;
@property (strong, nonatomic) NSNumber *totalNumber;

@end

