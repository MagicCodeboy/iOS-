//
//  TimeLineCell.m
//  iOS时间轴的实现
//
//  Created by lalala on 2017/5/26.
//  Copyright © 2017年 lsh. All rights reserved.
//

#import "TimeLineCell.h"
#import "SDAutoLayout.h"

@implementation TimeLineCell

+ (instancetype) timeLineCell:(UITableView *) tableView{
    TimeLineCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TimeLineCell"];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"TimeLineCell" owner:nil options:nil] firstObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

- (void)awakeFromNib {
    [super awakeFromNib];
  
    self.pointView.sd_layout.topSpaceToView(self.contentView, 20).leftSpaceToView(self.contentView, 5).widthIs(8).heightEqualToWidth();
    self.pointView.sd_cornerRadius = @(4);
    
    self.lineView.sd_layout.topEqualToView(self.contentView).centerXEqualToView(self.pointView).widthIs(1).bottomSpaceToView(self.contentView, 0);
    
    self.timeLable.sd_layout.centerYEqualToView(self.pointView).leftSpaceToView(self.pointView, 10).rightSpaceToView(self.contentView, 10).heightIs(20);
    
    self.detailLabel.sd_layout.topSpaceToView(self.timeLable, 15).leftEqualToView(self.timeLable).rightSpaceToView(self.contentView, 10).autoHeightRatio(0);
    
    
}
-(void)setModel:(TimeLineModel *)model{
    _model = model;
    self.detailLabel.text = model.title;
    self.timeLable.text = model.time;
    
    [self setupAutoHeightWithBottomView:self.detailLabel bottomMargin:0];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];


}

@end
