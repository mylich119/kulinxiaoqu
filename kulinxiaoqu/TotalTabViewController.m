//
//  TotalTabViewController.m
//  kulinxiaoqu
//
//  Created by mylich119 on 14/10/19.
//  Copyright (c) 2014年 lich. All rights reserved.
//

#import "TotalTabViewController.h"
#import "MapViewController.h"
#import "XiaoquViewController.h"
#import "MessageViewController.h"
#import "OtherViewController.h"


@interface TotalTabViewController(){
}
@end


@implementation TotalTabViewController

@synthesize navMapViewController;
@synthesize navXiaoquViewController;
@synthesize navMessageViewController;
@synthesize navOtherViewController;



- (void)viewDidLoad{
    [super viewDidLoad];
    MapViewController * mapViewController = [[MapViewController alloc] init];
    self.navMapViewController = [[UINavigationController alloc] initWithRootViewController:mapViewController];
    self.navMapViewController.navigationBar.tintColor = [UIColor blackColor];
    
    XiaoquViewController * xiaoquViewController = [[XiaoquViewController alloc] init];
    self.navXiaoquViewController = [[UINavigationController alloc] initWithRootViewController:xiaoquViewController];

    MessageViewController * messageViewController = [[MessageViewController alloc] init];
    self.navMessageViewController = [[UINavigationController alloc] initWithRootViewController:messageViewController];

    OtherViewController * otherViewController = [[OtherViewController alloc] init];
    self.navOtherViewController = [[UINavigationController alloc] initWithRootViewController:otherViewController];

 
    self.viewControllers = [NSArray arrayWithObjects:self.navMapViewController, self.navXiaoquViewController, self.navMessageViewController, self.navOtherViewController, nil];
    [self setSelectedIndex:0];

   }


@end