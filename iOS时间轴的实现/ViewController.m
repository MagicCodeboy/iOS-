//
//  ViewController.m
//  iOS时间轴的实现
//
//  Created by lalala on 2017/5/26.
//  Copyright © 2017年 lsh. All rights reserved.
//

#import "ViewController.h"
#import "TimeLineView.h"
#import "TimeLineModel.h"
@interface ViewController ()

@property (nonatomic, strong) TimeLineView *timeLine;
@property (nonatomic, strong) NSMutableArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = YES;
    
    self.timeLine = [[TimeLineView alloc]init];
    [self setData];
    
    
    [self.timeLine setSuperView:self.view dataArr:self.dataArr];
    
    
    
}
-(void)setData{
    self.dataArr = [NSMutableArray array];
    
    NSArray * textArray = @[@"当你的 app 没有提供 3x 的LaunchImage 时。然后等比例拉伸屏幕宽度返回 320；然后等比例拉伸到大屏。这种情况下对界面不会产生任小。但是建议不要长期处于这种模式下，否则在大屏上会显得字大，内容少，容易遭到用户投诉。但是建议不要长期处于这种模式下，否则在大屏上会显得字大，内容少，容易遭到用户投诉。",
                            @"然后等比例拉伸到大屏。屏幕宽度返回 320否则在大屏上会显得字大长期处于这种模式下，否则在大屏上会显得字大，内容少这种情况下对界面不会",
                            @"长期处于这种模式下",
                            @"但是建议不要长期处于这种模式下，否则在大屏上会显得字大，内容少，容易遭到用户投诉。",
                            @"否则在大屏上会显得字大，内容少，容易遭到用户投诉。但是建议不要长期处于这种模式下，否则在大屏上会显得字大，内容少，容易遭到用户投诉。"
                            , @"然后等比例拉伸到大屏。屏幕宽度返回 320否则在大屏上会显得字大长期处于这种模式下，否则在大屏上会显得字大，内容少这种情况下对界面不会",
                            @"内容少，容易遭到用户投诉。",
                            @"但是建议不要长期处于这种模式下，否则在大屏上会显得字大，内容少，容易遭到用户投诉。",
                            @"容易遭到用户投诉。但是建议不要长期处于这种模式下，否则在大屏上会显得字大，内容少，容易遭到用户投诉。"];
    
    for (int i = 0 ; i < textArray.count; i++) {
        TimeLineModel * model = [[TimeLineModel alloc]init];
        model.title = textArray[i];
        model.time = [NSString stringWithFormat:@"2017年5月20号,12:%d",i * 6];
        [self.dataArr addObject:model];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
