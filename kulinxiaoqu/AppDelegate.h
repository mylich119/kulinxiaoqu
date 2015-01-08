//
//  AppDelegate.h
//  kulinxiaoqu
//
//  Created by mylich119 on 14/10/22.
//  Copyright (c) 2014年 lich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapViewController.h"
#import "XiaoquViewController.h"
#import "MessageViewController.h"
#import "OtherViewController.h"
#import "BMapKit.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) BMKUserLocation* currentLoc;

@end

