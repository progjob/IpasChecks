//
//  ViewController.m
//  CheckApp
//
//  Created by Dmitry on 18/05/2020.
//  Copyright © 2020 xxx. All rights reserved.
//

#import "ViewController.h"
#import "SchemesData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        for (int i = 1; i<SchemesData.bundles.count; i++) {
            NSDictionary *bundle = SchemesData.bundles[i];
            [self startForBundle:bundle];
        }
    } else {
        NSDictionary *bundle = SchemesData.bundles[indexPath.row];
        [self startForBundle:bundle];
    }
}

- (void)startForBundle:(NSDictionary *)bundle {
    NSArray *schemes = [bundle objectForKey:@"schemes"];
    NSLog(@"Start: %@", [bundle objectForKey:@"name"]);
    if (schemes.count > 0) {
        [self testSchemesList:schemes];
    } else {
        NSLog(@"\t\t\tWarning: empty schemes list");
    }
}

- (void)testSchemesList:(NSArray *)list {
    BOOL isFailed = NO;
    
    for (NSString *scheme in list) {
        NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@://", scheme]];
        if (![UIApplication.sharedApplication canOpenURL:url]) {
            isFailed = YES;
            NSLog(@"\t\t\tERROR url = %@", url);
        }
    }
    
    if (!isFailed) {
        NSLog(@"\t\t\tAll schemes are alives!");
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return SchemesData.bundles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MyIdentifier"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }

    NSDictionary *item = (NSDictionary *)[SchemesData.bundles objectAtIndex:indexPath.row];
    NSString *appName = [item objectForKey:@"name"];

    cell.textLabel.text = appName;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return (CGFloat)40.0;
}

@end
