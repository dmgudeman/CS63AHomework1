//
//  CardGameViewController.m
//  CS63AHomework1
//
//  Created by David Gudeman on 4/12/15.
//  Copyright (c) 2015 David Gudeman. All rights reserved.
//

#import "CardGameViewController.h"

#import "PlayingCard.h"
#import "Deck.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController (){
  PlayingCardDeck *playingCardDeck;
}

@property (strong, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation CardGameViewController
- (Deck *)deck
{
  if (!_deck) _deck = [self createDeck];
  
  return _deck;
}

- (Deck *)createDeck
{
  return [[PlayingCardDeck alloc]init];
}

//This checks to make sure the view loaded and connects the
//view with the controller
- (void)viewDidLoad{
  [super viewDidLoad];
  playingCardDeck = [[PlayingCardDeck alloc] init];
}

- (void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
  
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount = %d ", self.flipCount);
}

// This method toggles the card face up and face down
// by using the abscense of a title on the backside of the card
- (IBAction)touchCardButtom:(UIButton *)sender {
  
  if ([sender.currentTitle length]){
  
    [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                      forState:UIControlStateNormal];
  
    [sender setTitle:@"" forState:UIControlStateNormal];
  } else {
    Card *card = [self.drawRandomCard;
    
    [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                      forState:UIControlStateNormal];
   
    NSString* title = card.contents;
    
    [sender setTitle:title forState:UIControlStateNormal];
  }
  self.flipCount++;
}

@end
