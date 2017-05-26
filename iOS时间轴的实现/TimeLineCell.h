//
//  TimeLineCell.h
//  iOS时间轴的实现
//
//  Created by lalala on 2017/5/26.
//  Copyright © 2017年 lsh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TimeLineModel.h"
@interface TimeLineCell : UITableViewCell

+ (instancetype) timeLineCell:(UITableView *) tableView;

@property (weak, nonatomic) IBOutlet UIView *pointView;
@property (weak, nonatomic) IBOutlet UIView *lineView;
@property (weak, nonatomic) IBOutlet UILabel *timeLable;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@property(strong,nonatomic) TimeLineModel * model;

@end
