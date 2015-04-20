//
//  CardGameViewController.m
//  CS63AHomework1
//
//  Created by David Gudeman on 4/12/15.
//  Copyright (c) 2015 David Gudeman. All rights reserved.
//

#import "CardGameViewController.h"
#import "CardMatchingGame.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController (){
  PlayingCardDeck *playingCardDeck;
}

@property (strong, nonatomic)CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;

@end

@implementation CardGameViewController

- (CardMatchingGame *)game
{
  if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:0
                                                        usingDeck:[self createDeck]];
  return _game;
}



- (Deck *)createDeck
{
  return [[PlayingCardDeck alloc]init];
}

// This method toggles the card face up and face down
// by using the abscense of a title on the backside of the card
- (IBAction)touchCardButtom:(UIButton *)sender
{
  int chosenButtonIndex = [self.cardButtons indexOfObject:sender];
  [self.game chooseCardAtIndex:chosenButtonIndex];
  [self updateUI];
  
 
}


//This checks to make sure the view loaded and connects the
//view with the controller
- (void)viewDidLoad{
  [super viewDidLoad];
  playingCardDeck = [[PlayingCardDeck alloc] init];
}

- (void)updateUI {}




@end
