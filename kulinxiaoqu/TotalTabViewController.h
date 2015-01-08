//
//  TotalTabViewController.h
//  kulinxiaoqu
//
//  Created by mylich119 on 14/10/19.
//  Copyright (c) 2014年 lich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIkit/UIKit.h>


@interface TotalTabViewController : UITabBarController
    @property (strong, nonatomic) UINavigationController *navMapViewController;
    @property (strong, nonatomic) UINavigationController *navXiaoquViewController;
    @property (strong, nonatomic) UINavigationController *navMessageViewController;
    @property (strong, nonatomic) UINavigationController *navOtherViewController;

@end

