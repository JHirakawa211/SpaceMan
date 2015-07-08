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

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *TouchSpaceMan = [touches anyObject];
    
    startPoint = [TouchSpaceMan locationInView:self.view];
    
    SpaceMan.center = CGPointMake(startPoint.x, startPoint.y);
    
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

-(void)Score{
    ScoreNumber = ScoreNumber + 1;
    ScoreLabel.text = [NSString stringWithFormat:@"Score:%i",ScoreNumber];
}

-(IBAction)StartGame:(id)sender{
    RightRedAsteroid.hidden = NO;
    RightGreenAsteroid.hidden = NO;
    RightDiagBlueAsteroid.hidden = NO;
    RightDiagMostOrangeAsteroid.hidden = NO;
    TopRedAsteroid.hidden = NO;
    TopYellowAsteroid.hidden = NO;
    LeftDiagMostGreenAsteroid.hidden = NO;
    LeftDiagPurpleAsteroid.hidden = NO;
    LeftPinkAsteroid.hidden = NO;
    LeftDarkBlueAsteroid.hidden = NO;
    //LeftDiagDownMostYellowAsteroid.hidden = NO;
    BottomBlueAsteroid.hidden = NO;
    BottomPurpleAsteroid.hidden = NO;
    //RightDiagDownDarkBlueAsteroid.hidden = NO;
    
    StartGame.hidden = YES;
    
    [self PlaceAsteroidLeftRed];
    [self PlaceAsteroidLeftGreen];
    
    ScoreTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(Score) userInfo:nil repeats:YES];
    
    AsteroidLeftRedMovement = [NSTimer scheduledTimerWithTimeInterval:0.005 target:self selector:@selector(AsteroidMovingLeftRed) userInfo:nil repeats:YES];
    
    AsteroidLeftGreenMovement = [NSTimer scheduledTimerWithTimeInterval:0.004 target:self selector:@selector(AsteroidMovingLeftGreen) userInfo:nil repeats:YES];
    
    AsteroidRightPinkMovement = [NSTimer scheduledTimerWithTimeInterval:0.005 target:self selector:@selector(AsteroidMovingRightPink) userInfo:nil repeats:YES];
    
    AsteroidRightDarkBlueMovement = [NSTimer scheduledTimerWithTimeInterval:0.003 target:self selector:@selector(AsteroidMovingRightDarkBlue) userInfo:nil repeats:YES];
    
    AsteroidTopRedMovement= [NSTimer scheduledTimerWithTimeInterval:0.004 target:self selector:@selector(AsteroidMovingTopRed) userInfo:nil repeats:YES];
    
    AsteroidTopYellowMovement = [NSTimer scheduledTimerWithTimeInterval:0.005 target:self selector:@selector(AsteroidMovingTopYellow) userInfo:nil repeats:YES];
    
    AsteroidBottomBlueMovement = [NSTimer scheduledTimerWithTimeInterval:0.003 target:self selector:@selector(AsteroidMovingBottomBlue) userInfo:nil repeats:YES];
    
    AsteroidBottomPurpleMovement = [NSTimer scheduledTimerWithTimeInterval:0.004 target:self selector:@selector(AsteroidMovingBottomPurple) userInfo:nil repeats:YES];
    
    AsteroidRightDiagOrangeMovement = [NSTimer scheduledTimerWithTimeInterval:0.005 target:self selector:@selector(AsteroidMovingRightDiagOrange) userInfo:nil repeats:YES];
    
    AsteroidRightDiagBlueMovement = [NSTimer scheduledTimerWithTimeInterval:0.005 target:self selector:@selector(AsteroidMovingRightDiagBlue) userInfo:nil repeats:YES];
    
    AsteroidLeftDiagGreenMovement = [NSTimer scheduledTimerWithTimeInterval:0.004 target:self selector:@selector(AsteroidMovingLeftDiagGreen) userInfo:nil repeats:YES];
    
    AsteroidLeftDiagPurpleMovement = [NSTimer scheduledTimerWithTimeInterval:0.002 target:self selector:@selector(AsteroidMovingLeftDiagPurple) userInfo:nil repeats:YES];
    
     /*AsteroidLeftDiagDownOrangeMovement = [NSTimer scheduledTimerWithTimeInterval:0.005 target:self selector:@selector(AsteroidMovingLeftDiagDownOrange) userInfo:nil repeats:YES];*/
    
    /* AsteroidLeftDiagDownYellowMovement = [NSTimer scheduledTimerWithTimeInterval:0.005 target:self selector:@selector(AsteroidMovingLeftDiagDownYellow) userInfo:nil repeats:YES];
    
     AsteroidRightDiagDownDarkBlueMovement = [NSTimer scheduledTimerWithTimeInterval:0.005 target:self selector:@selector(AsteroidMovingRightDiagDownDarkBlue) userInfo:nil repeats:YES];
    
      AsteroidRightDiagDownPinkMovement = [NSTimer scheduledTimerWithTimeInterval:0.005 target:self selector:@selector(AsteroidMovingRightDiagDownPink) userInfo:nil repeats:YES];*/


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
-(void)PlaceAsteroidRightDiagOrange{
    
    RandomRightDiagAsteroidPosition = arc4random() %600;
    RandomRightDiagAsteroidPosition = RandomRightDiagAsteroidPosition + 200;
    
    RightDiagMostOrangeAsteroid.center = CGPointMake(RandomRightDiagAsteroidPosition, -50);
}
-(void)PlaceAsteroidRightDiagBlue{
    
    RandomRightDiagAsteroidPosition = arc4random() %600;
    RandomRightDiagAsteroidPosition = RandomRightDiagAsteroidPosition + 250;
    
    RightDiagBlueAsteroid.center = CGPointMake(RandomRightDiagAsteroidPosition, -50);
}
-(void)PlaceAsteroidLeftDiagGreen{
    
    RandomLeftDiagAsteroidPosition = arc4random() %600;
    RandomLeftDiagAsteroidPosition = RandomLeftDiagAsteroidPosition - 200;
    
    LeftDiagMostGreenAsteroid.center = CGPointMake(RandomLeftDiagAsteroidPosition, -50);
}
-(void)PlaceAsteroidLeftDiagPurple{
    
    RandomLeftDiagAsteroidPosition = arc4random() %600;
    RandomLeftDiagAsteroidPosition = RandomLeftDiagAsteroidPosition -300;
    
    LeftDiagPurpleAsteroid.center = CGPointMake(RandomLeftDiagAsteroidPosition, -50);

}
-(void)PlaceAsteroidLeftDiagDownYellow{
    
    RandomleftDiagDownAsteroidPosition = arc4random() %600;
    RandomleftDiagDownAsteroidPosition = RandomleftDiagDownAsteroidPosition -200;
    
    LeftDiagDownMostYellowAsteroid.center = CGPointMake(-50, RandomleftDiagDownAsteroidPosition);
    
}
/*-(void)PlaceAsteroidLeftDiagDownOrange{
    
    RandomleftDiagDownAsteroidPosition = arc4random() %600;
    RandomleftDiagDownAsteroidPosition = RandomleftDiagDownAsteroidPosition -200;
    
    LeftDiagDownMostOrangeAsteroid.center = CGPointMake(RandomleftDiagDownAsteroidPosition, -50);
    
}
-(void)PlaceAsteroidRightDiagDownPink{
    
    RandomRightDiagDownAsteroidPosition = arc4random() %600;
    RandomRightDiagDownAsteroidPosition = RandomleftDiagDownAsteroidPosition -200;
    
    RightDiagDownPinkAsteroid.center = CGPointMake(RandomRightDiagDownAsteroidPosition, -50);
    
}*/
-(void)PlaceAsteroidRightDiagDownDarkBlue{
    
    RandomRightDiagDownAsteroidPosition = arc4random() %600;
    RandomRightDiagDownAsteroidPosition = RandomleftDiagDownAsteroidPosition -200;
    
    RightDiagDownDarkBlueAsteroid.center = CGPointMake(RandomRightDiagDownAsteroidPosition, -50);
    
}

-(void)AsteroidMovingLeftRed{
    
    RightRedAsteroid.center = CGPointMake(RightRedAsteroid.center.x-1, RightRedAsteroid.center.y);
    
    if(RightRedAsteroid.center.x < -28){
        [self PlaceAsteroidLeftRed];
    }
    
    if(CGRectIntersectsRect(SpaceMan.frame, RightRedAsteroid.frame)){
        [self GameOver];
    }
}
-(void)AsteroidMovingLeftGreen{
    
    RightGreenAsteroid.center = CGPointMake(RightGreenAsteroid.center.x-1, RightGreenAsteroid.center.y);
    
    if(RightGreenAsteroid.center.x < -28){
        [self PlaceAsteroidLeftGreen];
    }

    if(CGRectIntersectsRect(SpaceMan.frame, RightGreenAsteroid.frame)){
        [self GameOver];
    }
}
-(void)AsteroidMovingRightPink{
    
    LeftPinkAsteroid.center = CGPointMake(LeftPinkAsteroid.center.x+1, LeftPinkAsteroid.center.y);
    
    if(LeftPinkAsteroid.center.x > 500){
        [self PlaceAsteroidRightPink];
    }

    if(CGRectIntersectsRect(SpaceMan.frame, LeftPinkAsteroid.frame)){
        [self GameOver];
    }
}
-(void)AsteroidMovingRightDarkBlue{
    
    LeftDarkBlueAsteroid.center = CGPointMake(LeftDarkBlueAsteroid.center.x+1, LeftDarkBlueAsteroid.center.y);
    
    if(LeftDarkBlueAsteroid.center.x>500){
        [self PlaceAsteroidRightDarkBlue];
    }
   
    if(CGRectIntersectsRect(SpaceMan.frame, LeftDarkBlueAsteroid.frame)){
        [self GameOver];
    }
}
-(void)AsteroidMovingTopRed{
    
    TopRedAsteroid.center = CGPointMake(TopRedAsteroid.center.x, TopRedAsteroid.center.y+1);
    
    if(TopRedAsteroid.center.y > 720){
        [self PlaceAsteroidTopRed];
    }

    if(CGRectIntersectsRect(SpaceMan.frame, TopRedAsteroid.frame)){
        [self GameOver];
    }
}
-(void)AsteroidMovingTopYellow{
    
    TopYellowAsteroid.center = CGPointMake(TopYellowAsteroid.center.x, TopYellowAsteroid.center.y+1);
    
    if(TopYellowAsteroid.center.y > 720){
        [self PlaceAsteroidTopYellow];
    }

    if(CGRectIntersectsRect(SpaceMan.frame, TopYellowAsteroid.frame)){
        [self GameOver];
    }
}
-(void)AsteroidMovingBottomBlue{
    
    BottomBlueAsteroid.center = CGPointMake(BottomBlueAsteroid.center.x, BottomBlueAsteroid.center.y-1);
    
    if(BottomBlueAsteroid.center.y < -60){
        [self PlaceAsteroidBottomBlue];
    }
    if(CGRectIntersectsRect(SpaceMan.frame, BottomBlueAsteroid.frame)){
        [self GameOver];
    }
}
-(void)AsteroidMovingBottomPurple{
    
    BottomPurpleAsteroid.center = CGPointMake(BottomPurpleAsteroid.center.x, BottomPurpleAsteroid.center.y-1);
    
    if(BottomPurpleAsteroid.center.y < -60){
        [self PlaceAsteroidBottomPurple];
    }

    if(CGRectIntersectsRect(SpaceMan.frame, BottomPurpleAsteroid.frame)){
        [self GameOver];
    }
}
-(void)AsteroidMovingRightDiagOrange{
    
    RightDiagMostOrangeAsteroid.center = CGPointMake(RightDiagMostOrangeAsteroid.center.x-1, RightDiagMostOrangeAsteroid.center.y+1);
    
    if(RightDiagMostOrangeAsteroid.center.y > 720){
        [self PlaceAsteroidRightDiagOrange];
    }

    if(CGRectIntersectsRect(SpaceMan.frame, RightDiagMostOrangeAsteroid.frame)){
        [self GameOver];
    }
}
-(void)AsteroidMovingRightDiagBlue{
    
    RightDiagBlueAsteroid.center = CGPointMake(RightDiagBlueAsteroid.center.x-1, RightDiagBlueAsteroid.center.y+1);
    
    if(RightDiagBlueAsteroid.center.y > 720){
        [self PlaceAsteroidRightDiagBlue];
    }

    if(CGRectIntersectsRect(SpaceMan.frame, RightDiagBlueAsteroid.frame)){
        [self GameOver];
    }
}
-(void)AsteroidMovingLeftDiagGreen{
    
    LeftDiagMostGreenAsteroid.center = CGPointMake(LeftDiagMostGreenAsteroid.center.x+1, LeftDiagMostGreenAsteroid.center.y+2);
    
    if(LeftDiagMostGreenAsteroid.center.y > 720){
        [self PlaceAsteroidLeftDiagGreen];
    }

    if(CGRectIntersectsRect(SpaceMan.frame, LeftDiagMostGreenAsteroid.frame)){
        [self GameOver];
    }
}
-(void)AsteroidMovingLeftDiagPurple{
    
    LeftDiagPurpleAsteroid.center = CGPointMake(LeftDiagPurpleAsteroid.center.x+1, LeftDiagPurpleAsteroid.center.y+1);
    
    if(LeftDiagPurpleAsteroid.center.y > 720){
        [self PlaceAsteroidLeftDiagPurple];
    }
   
    if(CGRectIntersectsRect(SpaceMan.frame, LeftDiagPurpleAsteroid.frame)){
        [self GameOver];
    }
}
/*-(void)AsteroidMovingLeftDiagDownYellow{
    
    LeftDiagDownMostYellowAsteroid.center = CGPointMake(LeftDiagDownMostYellowAsteroid.center.x+1, LeftDiagDownMostYellowAsteroid.center.y-1);
    
    if(LeftDiagDownMostYellowAsteroid.center.y < -30){
        [self PlaceAsteroidLeftDiagDownYellow];
    }
    
}
-(void)AsteroidMovingRightDiagDownDarkBlue{
    
}*/
-(void)GameOver{
    
    if(ScoreNumber > HighScoreNumber){
        HighScoreNumber = ScoreNumber;
        [[NSUserDefaults standardUserDefaults]setInteger:ScoreNumber forKey:@"HighScoreSaved"];
    }
    [AsteroidBlueMovement invalidate];
    [AsteroidBottomBlueMovement invalidate];
    [AsteroidBottomPurpleMovement invalidate];
    [AsteroidLeftDiagGreenMovement invalidate];
    [AsteroidLeftDiagPurpleMovement invalidate];
    [AsteroidLeftGreenMovement invalidate];
    [AsteroidLeftRedMovement invalidate];
    [AsteroidRightDarkBlueMovement invalidate];
    [AsteroidRightDiagBlueMovement invalidate];
    [AsteroidRightDiagOrangeMovement invalidate];
    [AsteroidRightPinkMovement invalidate];
    [AsteroidTopRedMovement invalidate];
    [AsteroidTopYellowMovement invalidate];
    [ScoreTimer invalidate];
    
    
    SpaceMan.hidden = YES;
    RightRedAsteroid.hidden = YES;
    RightGreenAsteroid.hidden = YES;
    RightDiagBlueAsteroid.hidden = YES;
    RightDiagMostOrangeAsteroid.hidden = YES;
    TopRedAsteroid.hidden = YES;
    TopYellowAsteroid.hidden = YES;
    LeftDiagMostGreenAsteroid.hidden = YES;
    LeftDiagPurpleAsteroid.hidden = YES;
    LeftPinkAsteroid.hidden = YES;
    LeftDarkBlueAsteroid.hidden = YES;
    LeftDiagDownMostYellowAsteroid.hidden = YES;
    LeftDiagDownMostOrangeAsteroid.hidden = YES;
    BottomBlueAsteroid.hidden = YES;
    BottomPurpleAsteroid.hidden = YES;
    RightDiagDownDarkBlueAsteroid.hidden = YES;
    RightDiagDownPinkAsteroid.hidden = YES;
    Exit.hidden = NO;
    
}
- (void)viewDidLoad {
    RightRedAsteroid.hidden = YES;
    RightGreenAsteroid.hidden = YES;
    RightDiagBlueAsteroid.hidden = YES;
    RightDiagMostOrangeAsteroid.hidden = YES;
    TopRedAsteroid.hidden = YES;
    TopYellowAsteroid.hidden = YES;
    LeftDiagMostGreenAsteroid.hidden = YES;
    LeftDiagPurpleAsteroid.hidden = YES;
    LeftPinkAsteroid.hidden = YES;
    LeftDarkBlueAsteroid.hidden = YES;
    LeftDiagDownMostYellowAsteroid.hidden = YES;
    LeftDiagDownMostOrangeAsteroid.hidden = YES;
    BottomBlueAsteroid.hidden = YES;
    BottomPurpleAsteroid.hidden = YES;
    RightDiagDownDarkBlueAsteroid.hidden = YES;
    RightDiagDownPinkAsteroid.hidden = YES;
    Exit.hidden = YES;
    ScoreNumber = 0;
    
    
    
    
    
    
    
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
