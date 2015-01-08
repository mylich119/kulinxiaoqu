//
//  CreateMapViewController.m
//  kulinxiaoqu
//
//  Created by mylich119 on 14/12/7.
//  Copyright (c) 2014年 lich. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CreateMapViewController.h"


@interface CreateMapViewController (){
    //baidu map
    BMKMapView* _mapView;
    BMKLocationViewDisplayParam* _viewParam;
    
    RichStyleLabel* _xiaoquInputArea;
    UITextField* _xiaoquInputName;
    
    AppDelegate *globalDelegate;
}
@end

@implementation CreateMapViewController


- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self initMapView];
    [self initXiaoquInputArea];
    [self initXiaoquInputName];
}

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nil bundle:nil];
    globalDelegate = [[UIApplication sharedApplication] delegate];
    
    self.navigationItem.title = @"新建小区";

    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:   @"完成"
                                                                    style:   UIBarButtonItemStylePlain
                                                                   target:   self
                                                                   action:   @selector(finishCreateXiaoqu:)];
    self.navigationItem.rightBarButtonItem = rightButton;
    self.hidesBottomBarWhenPushed = YES;
    return self;
}

- (void)initMapView{
    //初始化BMKMapView的各个参数
    _mapView = [[BMKMapView alloc] init];
    
    _mapView.showsUserLocation = YES;
    _mapView.zoomEnabled = NO;
    _mapView.zoomEnabledWithTap = NO;
    _mapView.scrollEnabled = NO;
    _mapView.overlookEnabled = NO;
    _mapView.rotateEnabled = NO;
    _mapView.userTrackingMode = BMKUserTrackingModeNone;//设置定位的状态
    _mapView.showsUserLocation = NO;//不显示定位图层
    _mapView.zoomLevel = 15.5;
    
    _viewParam= [[BMKLocationViewDisplayParam alloc] init];
    _viewParam.isAccuracyCircleShow = NO;
    [_mapView updateLocationViewWithParam:_viewParam];
    
    //将位置至于地图中央
    _mapView.centerCoordinate = globalDelegate.currentLoc.location.coordinate;
    NSLog(@"didUpdateUserLocation lat %f,long %f",globalDelegate.currentLoc.location.coordinate.latitude, globalDelegate.currentLoc.location.coordinate.longitude);

    _mapView.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    [self.view addSubview: _mapView];
    
    //定义mapview的位置
    [self.view addConstraint:[NSLayoutConstraint    constraintWithItem:     _mapView
                                                             attribute:     NSLayoutAttributeWidth
                                                             relatedBy:     NSLayoutRelationEqual
                                                                toItem:     self.view
                                                             attribute:     NSLayoutAttributeWidth
                                                            multiplier:     1
                                                              constant:     0]];
    
    [self.view addConstraint:[NSLayoutConstraint    constraintWithItem:     _mapView
                                                             attribute:     NSLayoutAttributeHeight
                                                             relatedBy:     NSLayoutRelationEqual
                                                                toItem:     self.view
                                                             attribute:     NSLayoutAttributeHeight
                                                            multiplier:     0.5
                                                              constant:     0]];
    
    [self.view addConstraint:[NSLayoutConstraint    constraintWithItem:     _mapView
                                                             attribute:     NSLayoutAttributeTop
                                                             relatedBy:     NSLayoutRelationEqual
                                                                toItem:     self.view
                                                             attribute:     NSLayoutAttributeTop
                                                            multiplier:     1
                                                              constant:     self.navigationController.navigationBar.frame.size.height +
                                                                            self.navigationController.navigationBar.frame.origin.y]];
    
    [self.view layoutSubviews];
    
}

- (void)initXiaoquInputArea{
    
    
}

- (void)initXiaoquInputName{
    
}

- (void)finishCreateXiaoqu:(id)sender{
    NSLog(@"gotofinish");
}

/*
 系统回调函数
 */


- (void)viewWillAppear:(BOOL)animated{
}

-(void)viewWillDisappear:(BOOL)animated{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc{

}
@end