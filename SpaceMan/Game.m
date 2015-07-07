//
//  Game.m
//  SpaceMan
//
//  Created by John Hirakawa on 7/6/15.
//  Copyright (c) 2015 John Hirakawa. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(IBAction)StartGame:(id)sender{
    RightRedAsteroid.hidden = NO;
    RightGreenAsteroid.hidden = NO;
    //RightDiagBlueAsteroid.hidden = NO;
   // RightDiagYellowAsteroid.hidden = NO;
   // RightDiagMostPinkAsteroid.hidden = NO;
   // RightDiagMostOrangeAsteroid.hidden = NO;
    TopRedAsteroid.hidden = NO;
    TopYellowAsteroid.hidden = NO;
    //LeftDiagMostGreenAsteroid.hidden = NO;
   // LeftDiagMostBlueAsteroid.hidden = NO;
  //  LeftDiagPurpleAsteroid.hidden = NO;
  //  LeftDiagDarkBlueAsteroid.hidden = NO;
    LeftPinkAsteroid.hidden = NO;
    LeftDarkBlueAsteroid.hidden = NO;
   // LeftDiagDownPurpleAsteroid.hidden = NO;
   // LeftDiagDownRedAsteroid.hidden = NO;
   // LeftDiagDownMostYellowAsteroid.hidden = NO;
   // LeftDiagDownMostOrangeAsteroid.hidden = NO;
    BottomBlueAsteroid.hidden = NO;
    BottomPurpleAsteroid.hidden = NO;
   // RightDiagDownMostOrangeAsteroid.hidden = NO;
   // RightDiagDownMostGreenAsteroid.hidden = NO;
   // RightDiagDownDarkBlueAsteroid.hidden = NO;
   // RightDiagDownPinkAsteroid.hidden = NO;
    
    StartGame.hidden = YES;
    
    [self PlaceAsteroidLeftRed];
    [self PlaceAsteroidLeftGreen];
    
    
    AsteroidLeftRedMovement = [NSTimer scheduledTimerWithTimeInterval:0.003 target:self selector:@selector(AsteroidMovingLeftRed) userInfo:nil repeats:YES];
    
    AsteroidLeftGreenMovement = [NSTimer scheduledTimerWithTimeInterval:0.002 target:self selector:@selector(AsteroidMovingLeftGreen) userInfo:nil repeats:YES];
    
    AsteroidRightPinkMovement = [NSTimer scheduledTimerWithTimeInterval:0.008 target:self selector:@selector(AsteroidMovingRightPink) userInfo:nil repeats:YES];
    
    AsteroidRightDarkBlueMovement = [NSTimer scheduledTimerWithTimeInterval:0.003 target:self selector:@selector(AsteroidMovingRightDarkBlue) userInfo:nil repeats:YES];
    
    AsteroidTopRedMovement= [NSTimer scheduledTimerWithTimeInterval:0.003 target:self selector:@selector(AsteroidMovingTopRed) userInfo:nil repeats:YES];
    
    AsteroidTopYellowMovement = [NSTimer scheduledTimerWithTimeInterval:0.006 target:self selector:@selector(AsteroidMovingTopYellow) userInfo:nil repeats:YES];
    
    AsteroidBottomBlueMovement = [NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(AsteroidMovingBottomBlue) userInfo:nil repeats:YES];
    
    AsteroidBottomPurpleMovement = [NSTimer scheduledTimerWithTimeInterval:0.005 target:self selector:@selector(AsteroidMovingBottomPurple) userInfo:nil repeats:YES];

}
-(void)PlaceAsteroidLeftRed{
    
    
    RandomRightAsteroidPosition = arc4random() %600;
    RandomRightAsteroidPosition = RandomRightAsteroidPosition +100;
    
    RightRedAsteroid.center = CGPointMake(420, RandomRightAsteroidPosition);
    
}
-(void)PlaceAsteroidLeftGreen{
    
    RandomRightAsteroidPosition = arc4random() %600;
    RandomRightAsteroidPosition = RandomRightAsteroidPosition +100;
  
    RightGreenAsteroid.center = CGPointMake(420, RandomRightAsteroidPosition);
}
-(void)PlaceAsteroidRightPink{
    
    RandomLeftAsteroidPosition = arc4random() %600;
    RandomLeftAsteroidPosition = RandomLeftAsteroidPosition -100;
    
    LeftPinkAsteroid.center = CGPointMake(-28, RandomLeftAsteroidPosition);
}
-(void)PlaceAsteroidRightDarkBlue{
    
    RandomLeftAsteroidPosition = arc4random() %600;
    RandomLeftAsteroidPosition = RandomLeftAsteroidPosition -100;
    
    LeftDarkBlueAsteroid.center = CGPointMake(-28, RandomLeftAsteroidPosition);
    
}
-(void)PlaceAsteroidTopRed{
    
    RandomTopAsteroidPosition = arc4random() %600;
    RandomTopAsteroidPosition = RandomTopAsteroidPosition -200;
    
    TopRedAsteroid.center = CGPointMake(RandomTopAsteroidPosition, -60);
    
}
-(void)PlaceAsteroidTopYellow{
    
    RandomTopAsteroidPosition = arc4random() %600;
    RandomTopAsteroidPosition = RandomTopAsteroidPosition -200;
    
    TopYellowAsteroid.center = CGPointMake(RandomTopAsteroidPosition, -60);
    
}
-(void)PlaceAsteroidBottomBlue{
    
    RandomBottomAsteroidPosition = arc4random() %600;
    RandomBottomAsteroidPosition = RandomBottomAsteroidPosition -300;
    
    BottomBlueAsteroid.center = CGPointMake(RandomBottomAsteroidPosition, 600);
}
-(void)PlaceAsteroidBottomPurple{
    
    RandomBottomAsteroidPosition = arc4random() %600;
    RandomBottomAsteroidPosition = RandomBottomAsteroidPosition -200;
    
    BottomPurpleAsteroid.center = CGPointMake(RandomBottomAsteroidPosition, 600);
}

-(void)AsteroidMovingLeftRed{
    
    RightRedAsteroid.center = CGPointMake(RightRedAsteroid.center.x-1, RightRedAsteroid.center.y);
    
    if(RightRedAsteroid.center.x < -28){
        [self PlaceAsteroidLeftRed];
    }
}
-(void)AsteroidMovingLeftGreen{
    
    RightGreenAsteroid.center = CGPointMake(RightGreenAsteroid.center.x-1, RightGreenAsteroid.center.y);
    
    if(RightGreenAsteroid.center.x < -28){
        [self PlaceAsteroidLeftGreen];
    }
}
-(void)AsteroidMovingRightPink{
    
    LeftPinkAsteroid.center = CGPointMake(LeftPinkAsteroid.center.x+1, LeftPinkAsteroid.center.y);
    
    if(LeftPinkAsteroid.center.x > 500){
        [self PlaceAsteroidRightPink];
    }
    
}
-(void)AsteroidMovingRightDarkBlue{
    
    LeftDarkBlueAsteroid.center = CGPointMake(LeftDarkBlueAsteroid.center.x+1, LeftDarkBlueAsteroid.center.y);
    
    if(LeftDarkBlueAsteroid.center.x>500){
        [self PlaceAsteroidRightDarkBlue];
    }
}
-(void)AsteroidMovingTopRed{
    
    TopRedAsteroid.center = CGPointMake(TopRedAsteroid.center.x, TopRedAsteroid.center.y+1);
    
    if(TopRedAsteroid.center.y > 720){
        [self PlaceAsteroidTopRed];
    }
}
-(void)AsteroidMovingTopYellow{
    
    TopYellowAsteroid.center = CGPointMake(TopYellowAsteroid.center.x, TopYellowAsteroid.center.y+1);
    
    if(TopYellowAsteroid.center.y > 720){
        [self PlaceAsteroidTopYellow];
    }
}
-(void)AsteroidMovingBottomBlue{
    
    BottomBlueAsteroid.center = CGPointMake(BottomBlueAsteroid.center.x, BottomBlueAsteroid.center.y-1);
    
    if(BottomBlueAsteroid.center.y < -60){
        [self PlaceAsteroidBottomBlue];
    }
}
-(void)AsteroidMovingBottomPurple{
    
    BottomPurpleAsteroid.center = CGPointMake(BottomPurpleAsteroid.center.x, BottomPurpleAsteroid.center.y-1);
    
    if(BottomPurpleAsteroid.center.y < -60){
        [self PlaceAsteroidBottomPurple];
    }
}

- (void)viewDidLoad {
    RightRedAsteroid.hidden = YES;
    RightGreenAsteroid.hidden = YES;
    RightDiagBlueAsteroid.hidden = YES;
    RightDiagYellowAsteroid.hidden = YES;
    RightDiagMostPinkAsteroid.hidden = YES;
    RightDiagMostOrangeAsteroid.hidden = YES;
    TopRedAsteroid.hidden = YES;
    TopYellowAsteroid.hidden = YES;
    LeftDiagMostGreenAsteroid.hidden = YES;
    LeftDiagMostBlueAsteroid.hidden = YES;
    LeftDiagPurpleAsteroid.hidden = YES;
    LeftDiagDarkBlueAsteroid.hidden = YES;
    LeftPinkAsteroid.hidden = YES;
    LeftDarkBlueAsteroid.hidden = YES;
    LeftDiagDownPurpleAsteroid.hidden = YES;
    LeftDiagDownRedAsteroid.hidden = YES;
    LeftDiagDownMostYellowAsteroid.hidden = YES;
    LeftDiagDownMostOrangeAsteroid.hidden = YES;
    BottomBlueAsteroid.hidden = YES;
    BottomPurpleAsteroid.hidden = YES;
    RightDiagDownMostOrangeAsteroid.hidden = YES;
    RightDiagDownMostGreenAsteroid.hidden = YES;
    RightDiagDownDarkBlueAsteroid.hidden = YES;
    RightDiagDownPinkAsteroid.hidden = YES;
    
    
    
    
    
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
