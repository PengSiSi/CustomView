//
//  ViewController.m
//  CustomView
//
//  Created by 思 彭 on 16/10/20.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "ViewController.h"

static NSString *const identifyCellId = @"cell";

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *pushControllerVcArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    [self setUI];
}

#pragma mark - 初始化数据

- (void)initData {

    self.dataArray = @[@"1:自定义segement",
                       @"2:自定义TextView"];
    self.pushControllerVcArray = @[@"CustomSegmentViewController", @"CustomTextViewViewController"];
}

#pragma mark - 设置界面

- (void)setUI {

    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifyCellId forIndexPath:indexPath];
    cell.textLabel.text = self.dataArray[indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    cell.textLabel.textColor = [UIColor blackColor];
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    return 0.0001;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 0.001;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
        
        id pushVc = [[NSClassFromString(self.pushControllerVcArray[indexPath.row]) alloc]init];
    [self.navigationController pushViewController:pushVc animated:YES];
}

#pragma mark - 懒加载

- (UITableView *)tableView {
    
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [[UIView alloc]init];
        
        // 注册cell
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:identifyCellId];
    }
    return _tableView;
}

@end
