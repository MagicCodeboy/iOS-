//
//  TimeLineView.h
//  iOS时间轴的实现
//
//  Created by lalala on 2017/5/26.
//  Copyright © 2017年 lsh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeLineView : UIView

@property(strong,nonatomic) NSArray * titleArr;

-(void)setSuperView:(UIView *)superView dataArr:(NSMutableArray *)dataArr;


@end
