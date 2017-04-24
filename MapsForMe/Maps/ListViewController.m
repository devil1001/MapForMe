//
//  listViewController.m
//  MapsForMe
//
//  Created by devil1001 on 24.04.17.
//  Copyright © 2017 devil1001. All rights reserved.
//

#import "ListViewController.h"
#import "ListCell.h"
#import "ListModel.h"


@interface ListViewController () <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *_modelArray;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self setupModel];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupModel {
    _modelArray = [[NSMutableArray alloc] init];
    for (int i =0; i<10; i++) {
        NSString *header = [NSString stringWithFormat:@"head%d",i];
        NSString *imagePath = @"/Users/devil1001/Documents/ios/MapsForMe/MapsForMe/Photos/List_Icon.png";
        ListModel *model = [[ListModel alloc] initWithHeader:header imagePath:imagePath];
        [_modelArray addObject:model];
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _modelArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LocationCell" forIndexPath:indexPath];
    ListModel *model;
    if ([_modelArray[indexPath.row] isMemberOfClass:[ListModel class]]){
        model = _modelArray[indexPath.row];
        [cell fillCellWithHeader:model];
    }
    return cell;
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
