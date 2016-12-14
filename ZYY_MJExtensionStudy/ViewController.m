//
//  ViewController.m
//  ZYY_MJExtensionStudy
//
//  Created by Tech-zhangyangyang on 16/8/10.
//  Copyright © 2016年 Tech-zhangyangyang. All rights reserved.
//

#import "ViewController.h"
#import "MJExtension.h"
#import "Status.h"
#import "UserModel.h"

UIKIT_EXTERN const NSString *str = @"str";

@interface ViewController ()

@property(nonatomic, strong) NSDictionary *listDataDic;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSAssert(YES, @"哎呀呀,这是怎么了,怎么这么不小心呢...");
    
    /*
        // 读取json数据文件
        NSString *path   = [[NSBundle mainBundle] pathForResource:@"Notes" ofType:@"json" ];
        NSData * jsonData = [[NSData alloc] initWithContentsOfFile:path];
     
        
        // 直接解析json字符串
        NSData *data = [@"{\"name\":\"hanqing\",\"age\":\"23\"}" dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary * jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:nil];
        NSLog(@"dic==%@", jsonDict);
    */

    
    /*
    // 自己模拟一段json字符串
    NSDictionary *dict = @{
                           @"text" : @"Agree!Nice weather!",
                           @"user" : @{
                                   @"name" : @"Jack",
                                   @"icon" : @"lufy.png"
                                   },
                           @"retweetedStatus" : @{
                                   @"text" : @"Nice weather!",
                                   @"user" : @{
                                           @"name" : @"Rose",
                                           @"icon" : @"nami.png"
                                           }
                                   }
                           };
    NSData   *jsonData   = [NSJSONSerialization dataWithJSONObject:dict options:0 error:nil];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSLog(@"jsonString===%@",jsonString);
    
    NSData  *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error ;
    id jsonObj = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    NSLog(@"jsonObj==%@", jsonObj);
 
    if (!jsonObj || error) {
        NSLog(@"JSON解析失败");
    }
    if ([jsonObj isKindOfClass:[NSDictionary class]]) {
        self.listDataDic = (NSDictionary *)jsonObj;
    }
    */
    
    /*
     
     
    NSArray *dictArray = @[
                           @{
                               @"name" : @"Jack",
                               @"icon" : @"lufy.png"
                               },
                           @{
                               @"name" : @"Rose",
                               @"icon" : @"nami.png"
                               }
                           ];
    NSArray *userArray = [UserModel mj_objectArrayWithKeyValuesArray:dictArray];
    for (UserModel *user in userArray) {
        NSLog(@"name=%@, icon=%@", user.name, user.icon);
    }
    
     
    */
    
    
    
    /*
    NSDictionary *dict1 = @{
                           @"text" : @"Agree!Nice weather!",
                           @"user" : @"hello",
                           @"city" : @"beijing"
                           };
    
    Status *status = [Status mj_objectWithKeyValues:dict1];
    
    NSString *text = status.text;
    NSString *city = status.city;
    NSString *icon = status.user;
    NSLog(@"text===%@ city ==%@ icon ===%@",text,city,icon);
    */
    
    
    /*
    NSArray *array = @[@"1",@"2",@"3"];
    BOOL stop = NO;
    for (NSString *str in array) {
        NSLog(@"str===%@",str);
        if (stop) break;
        NSLog(@"执行");
    }
    */
    
//    NSDictionary *dict = @{
//                           @"text" : @"是啊，今天天气确实不错！",
//                           @"user" : @{
//                                   @"name" : @"Jack",
//                                   @"icon" : @"lufy.png"
//                                   },
//                           @"retweetedStatus" : @{
//                                   @"text" : @"今天天气真不错！",
//                                   @"user" : @{
//                                           @"name" : @"Rose",
//                                           @"icon" : @"nami.png"
//                                           }
//                                   }
//                           };
//
//    // 将字典转为Status模型
//    Status *status = [Status objectWithKeyValues:dict];
    
    
    NSDictionary *dict = @{
                           @"statuses" : @[
                                   @{
                                       @"text" : @"Nice weather!",
                                       @"user" : @{
                                               @"name" : @"Rose",
                                               @"icon" : @"nami.png"
                                               }
                                       },
                                   @{
                                       @"text" : @"Go camping tomorrow!",
                                       @"user" : @{
                                               @"name" : @"Jack",
                                               @"icon" : @"lufy.png"
                                               }
                                       }
                                   ],
                           @"ads" : @[
                                   @{
                                       @"image" : @"ad01.png",
                                       @"url" : @"http://www.ad01.com"
                                       },
                                   @{
                                       @"image" : @"ad02.png",
                                       @"url" : @"http://www.ad02.com"
                                       }
                                   ],
                           @"totalNumber" : @"2014"
                           };
    
    
    // JSON -> StatusResult
    StatusResult *result = [StatusResult mj_objectWithKeyValues:dict];
    NSLog(@"totalNumber=%@", result.totalNumber);
    // totalNumber=2014
    
    // Printing
    for (Status *status in result.statuses) {
        NSString *text = status.text;
        NSString *name = status.user.name;
        NSString *icon = status.user.icon;
        NSLog(@"text=%@, name=%@, icon=%@", text, name, icon);
    }
    // text=Nice weather!, name=Rose, icon=nami.png
    // text=Go camping tomorrow!, name=Jack, icon=lufy.png
    
    // Printing
    for (Ad *ad in result.ads) {
        NSLog(@"image=%@, url=%@", ad.image, ad.url);
    }
}

- (NSDictionary *)listDataDic {
    if (_listDataDic == nil) {
        _listDataDic = [NSDictionary dictionary];
    }
    return _listDataDic;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
