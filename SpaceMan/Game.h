//
//  Game.h
//  SpaceMan
//
//  Created by John Hirakawa on 7/6/15.
//  Copyright (c) 2015 John Hirakawa. All rights reserved.
//

#import <UIKit/UIKit.h>

int RandomRightAsteroidPosition;
int RandomLeftAsteroidPosition;
int RandomTopAsteroidPosition;
int RandomBottomAsteroidPosition;
int RandomRightDiagAsteroidPosition;
int RandomLeftDiagAsteroidPosition;
int RandomleftDiagDownAsteroidPosition;
int RandomRightDiagDownAsteroidPosition;
int ScoreNumber;
BOOL Stop;
BOOL RRED;
BOOL RGreen;
BOOL DBlue;
BOOL DOrange;
BOOL TRed;
BOOL TYellow;
BOOL LPink;
BOOL LDarkBlue;
BOOL DGreen;
BOOL DPurple;
BOOL BPurple;
BOOL BBlue;
NSInteger HighScoreNumber;


@interface Game : UIViewController
{
    CGPoint startPoint;
    IBOutlet UIButton *StartGame;
    IBOutlet UIButton *Exit;
    IBOutlet UILabel *ScoreLabel;
    IBOutlet UILabel *FinalScore;
    IBOutlet UILabel *Instructions;
    IBOutlet UIImageView *SpaceMan;
    IBOutlet UIImageView *RightRedAsteroid;
    IBOutlet UIImageView *RightGreenAsteroid;
    IBOutlet UIImageView *RightDiagBlueAsteroid;
    IBOutlet UIImageView *RightDiagMostOrangeAsteroid;
    IBOutlet UIImageView *TopRedAsteroid;
    IBOutlet UIImageView *TopYellowAsteroid;
    IBOutlet UIImageView *LeftDiagMostGreenAsteroid;
    IBOutlet UIImageView *LeftDiagPurpleAsteroid;
    IBOutlet UIImageView *LeftPinkAsteroid;
    IBOutlet UIImageView *LeftDarkBlueAsteroid;
    IBOutlet UIImageView *BottomBlueAsteroid;
    IBOutlet UIImageView *BottomPurpleAsteroid;
    IBOutlet UIImageView *ScoreBox;
    
    //didnt use below
    IBOutlet UIImageView *LeftDiagDownMostOrangeAsteroid;
     IBOutlet UIImageView *RightDiagDownPinkAsteroid;
    IBOutlet UIImageView *LeftDiagDownMostYellowAsteroid;
    IBOutlet UIImageView *RightDiagDownDarkBlueAsteroid;
    
    NSTimer *AsteroidLeftRedMovement;
    NSTimer *AsteroidLeftGreenMovement;
    NSTimer *AsteroidRightPinkMovement;
    NSTimer *AsteroidRightDarkBlueMovement;
    NSTimer *AsteroidTopRedMovement;
    NSTimer *AsteroidTopYellowMovement;
    NSTimer *AsteroidBottomBlueMovement;
    NSTimer *AsteroidBottomPurpleMovement;
    NSTimer *AsteroidRightDiagOrangeMovement;
    NSTimer *AsteroidRightDiagBlueMovement;
    NSTimer *AsteroidLeftDiagGreenMovement;
    NSTimer *AsteroidLeftDiagPurpleMovement;
    NSTimer *FinalLeftRedMovement;
    NSTimer *FinalLeftGreenMovement;
    NSTimer *FinalRightPinkMovement;
    NSTimer *FinalRightDarkBlueMovement;
    NSTimer *FinalTopRedMovement;
    NSTimer *FinalTopYellowMovement;
    NSTimer *FinalBottomBlueMovement;
    NSTimer *FinalBottomPurpleMovement;
    NSTimer *FinalRightDiagOrangeMovement;
    NSTimer *FinalRightDiagBlueMovement;
    NSTimer *FinalLeftDiagGreenMovement;
    NSTimer *FinalLeftDiagPurpleMovement;
    NSTimer *SpaceManMovement;
    NSTimer *ScoreTimer;
    NSTimer *ScoreBoxMovement;
    NSTimer *ExitMovement;
    NSTimer *ScoreMovement;
    
    //NSTimer *AsteroidLeftDiagDownYellowMovement;
    //NSTimer *AsteroidLeftDiagDownOrangeMovement;
    //NSTimer *AsteroidRightDiagDownDarkBlueMovement;
    //NSTimer *AsteroidRightDiagDownPinkMovement;
    
    
    
}

-(IBAction)StartGame:(id)sender;
-(void)PlaceAsteroidLeftRed;
-(void)PlaceAsteroidLeftGreen;
-(void)PlaceAsteroidRightPink;
-(void)PlaceAsteroidRightDarkBlue;
-(void)PlaceAsteroidTopRed;
-(void)PlaceAsteroidTopYellow;
-(void)PlaceAsteroidBottomBlue;
-(void)PlaceAsteroidBottomPurple;
-(void)PlaceAsteroidRightDiagOrange;
-(void)PlaceAsteroidRightDiagBlue;
-(void)PlaceAsteroidLeftDiagGreen;
-(void)PlaceAsteroidLeftDiagPurple;
/*-(void)PlaceAsteroidLeftDiagDownYellow;
-(void)PlaceAsteroidRightDiagDownDarkBlue;*/


-(void)AsteroidMovingLeftRed;
-(void)AsteroidMovingLeftGreen;
-(void)AsteroidMovingRightPink;
-(void)AsteroidMovingRightDarkBlue;
-(void)AsteroidMovingTopRed;
-(void)AsteroidMovingTopYellow;
-(void)AsteroidMovingBottomBlue;
-(void)AsteroidMovingBottomPurple;
-(void)AsteroidMovingRightDiagOrange;
-(void)AsteroidMovingRightDiagBlue;
-(void)AsteroidMovingLeftDiagGreen;
-(void)AsteroidMovingLeftDiagPurple;
-(void)SpaceManMoving;
/*-(void)AsteroidMovingLeftDiagDownYellow;
-(void)AsteroidMovingRightDiagDownDarkBlue;*/

-(void)FinalLeftRedMoving;
-(void)FinalLeftGreenMoving;
-(void)FinalRightPinkMoving;
-(void)FinalRightDarkBlueMoving;
-(void)FinalTopRedMoving;
-(void)FinalTopYellowMoving;
-(void)FinalBottomBlueMoving;
-(void)FinalBottomPurpleMoving;
-(void)FinalRightDiagOrangeMoving;
-(void)FinalRightDiagBlueMoving;
-(void)FinalLeftDiagGreenMoving;
-(void)FinalLeftDiagPurpleMoving;

-(void)GameOver;
-(void)Score;
-(void)hidden;



@end
