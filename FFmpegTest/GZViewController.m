//
//  GZViewController.m
//  FFmpegTest
//
//  Created by zhaoyuan on 16/2/6.
//  Copyright © 2016年 times. All rights reserved.
//

#import "GZViewController.h"

@interface GZViewController ()

@end

@implementation GZViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.hidesBottomBarWhenPushed = YES;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [self initNav];
    [self initView];
    [self initData];
}

-(void)initNav{
    UIView *backView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screen_width, 64)];
    backView.backgroundColor=navigationBarColor;
    [self.view addSubview:backView];
    //标题
    UILabel *navTitle=[[UILabel alloc] init];
    navTitle.frame=CGRectMake(screen_width/2-100, 30, 200, 25);
    navTitle.text=@"";
    navTitle.textAlignment=1;
    navTitle.textColor=[UIColor whiteColor];
    navTitle.font = [UIFont boldSystemFontOfSize:17.0f];
    [backView addSubview:navTitle];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    backBtn.frame = CGRectMake(0, 20, 54, 44);
    UIImageView  *img=[[UIImageView alloc] initWithFrame:CGRectMake(10,10,13,23)];
    [img setImage:[ UIImage imageNamed:@"icon_back"]];
    [backBtn addSubview:img];
    [backBtn addTarget:self action:@selector(backBtnTap:) forControlEvents:UIControlEventTouchUpInside];
    backBtn.adjustsImageWhenHighlighted = NO;
    [backView addSubview:backBtn];
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.frame = CGRectMake(screen_width-40, 30, 23, 23);
    [rightBtn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(rightBtnTap:) forControlEvents:UIControlEventTouchUpInside];
    rightBtn.adjustsImageWhenHighlighted = NO;
    [backView addSubview:rightBtn];
}


- (void)initView{
    
//    UIView *topView = UIView.new;
//    topView.backgroundColor = UIColor.greenColor;
//    topView.layer.borderColor = UIColor.blackColor.CGColor;
//    topView.layer.borderWidth = 2;
//    [self.view addSubview:topView];
//    
//    UIView *topSubview = UIView.new;
//    topSubview.backgroundColor = UIColor.blueColor;
//    topSubview.layer.borderColor = UIColor.blackColor.CGColor;
//    topSubview.layer.borderWidth = 2;
//    [topView addSubview:topSubview];
//    
//    UIView *bottomView = UIView.new;
//    bottomView.backgroundColor = UIColor.redColor;
//    bottomView.layer.borderColor = UIColor.blackColor.CGColor;
//    bottomView.layer.borderWidth = 2;
//    [self.view addSubview:bottomView];
//    
//    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(@100);
//        make.left.equalTo(self.view);
//        make.right.equalTo(self.view);
//        make.height.equalTo(@40);
//    }];
//    
//    [topSubview mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(@200);
//        make.centerX.equalTo(@0);
//        make.width.equalTo(@20);
//        make.height.equalTo(@20);
//    }];
//    
//    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(self.mas_bottomLayoutGuide);
//        make.left.equalTo(self.view);
//        make.right.equalTo(self.view);
//        make.height.equalTo(@40);
//    }];
    
}


- (void)initData{
    
}



//响应事件
-(void)backBtnTap:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
    
}

-(void)rightBtnTap:(UIButton *)sender{
    
}


- (UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
