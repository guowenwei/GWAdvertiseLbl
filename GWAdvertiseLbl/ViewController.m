//
//  ViewController.m
//  GWAdvertiseLbl
//
//  Created by 魏郭文 on 2016/10/10.
//  Copyright © 2016年 魏郭文. All rights reserved.
//

#import "ViewController.h"
#import "GWAdvertiseLbl.h"

@interface ViewController ()
@property (nonatomic,strong) GWAdvertiseLbl * lbl;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lbl = [[GWAdvertiseLbl alloc] initWithFrame:CGRectMake(100, 100, 300, 50) style:(GWAdvertiseLblDirectionVertical) dataArray:@[@"时装周高能，前方有王菲出没",@"全国要严格限制低密度、大套型高档住房的土地供应，从而进一步调控住房供应结构。",@"早在2003年有关部门就发布了《关于清理各类园区用地加强土地供应调控的紧急通知》的通知"] bgColor:nil textColor:nil textFont:nil];
    [self.view addSubview:_lbl];
    [self.lbl startScrollView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.lbl stopScorllView];
}


@end
