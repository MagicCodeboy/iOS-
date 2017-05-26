//
//  TimeLineView.m
//  iOS时间轴的实现
//
//  Created by lalala on 2017/5/26.
//  Copyright © 2017年 lsh. All rights reserved.
//

#import "TimeLineView.h"
#import "SDAutoLayout.h"
#import "TimeLineCell.h"
@interface TimeLineView()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic) UITableView * tableView;

@property(strong,nonatomic) NSMutableArray * dataArr;

@end
@implementation TimeLineView


-(void)setSuperView:(UIView *)superView dataArr:(NSMutableArray *)dataArr{
    self.frame = superView.bounds;
    [superView addSubview:self];
    
    [self setUp];
    self.dataArr = dataArr;
}
-(void)setUp{
    self.tableView = [UITableView new];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self addSubview:self.tableView];
    
    self.tableView.sd_layout.topEqualToView(self).leftEqualToView(self).bottomEqualToView(self).rightEqualToView(self);
    
}

#pragma mark ----tableView的代理方法----
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //返回多少组
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //每组返回多少数据
    return self.dataArr.count;
}
//返回每一行的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    TimeLineModel * model = self.dataArr[indexPath.row];
    
    return [self.tableView cellHeightForIndexPath:indexPath model:model keyPath:@"model" cellClass:[TimeLineCell class] contentViewWidth:self.frame.size.width];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TimeLineCell * cell = [TimeLineCell timeLineCell:tableView];
    
    if (indexPath.row == 0) {
        cell.lineView.sd_layout.topSpaceToView(cell.pointView, 0);
        cell.lineView.backgroundColor = [UIColor grayColor];
        cell.pointView.backgroundColor = [UIColor redColor];
    } else {
        cell.lineView.sd_layout.topSpaceToView(cell.contentView, 0);
        cell.lineView.backgroundColor = [UIColor grayColor];
        cell.pointView.backgroundColor = [UIColor grayColor];
    }
    cell.model = self.dataArr[indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
//点击每一个Cell执行的操作
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

@end
