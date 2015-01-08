//
//  FirstViewController.m
//  kulinxiaoqu
//
//  Created by mylich119 on 14-10-12.
//  Copyright (c) 2014年 lich. All rights reserved.
//

#import "XiaoquViewController.h"

@interface XiaoquViewController ()

@end

@implementation XiaoquViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nil bundle:nil];
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"小区" image:[UIImage imageNamed:@"tabbar_xiaoqu_selected"] tag:1];
    
    self.tabBarItem = item;
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
