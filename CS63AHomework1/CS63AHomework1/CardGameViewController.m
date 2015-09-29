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

@interface CardGameViewController ()
//{
//  PlayingCardDeck *playingCardDeck;
//}
@property (strong, nonatomic)CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) Deck *deck;

@end

@implementation CardGameViewController

- (CardMatchingGame *)game
{
  if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count]
                                                        usingDeck:[self createDeck]];
  return _game;
}
- (Deck *)deck
{
  if (!_deck) _deck = [self createDeck];
  return _deck;
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

- (void)viewDidLoad{
  [super viewDidLoad];
  [CardMatchingGame self];
//  playingCardDeck = [[PlayingCardDeck alloc] init];
 // deck = [[Deck alloc]init]
}

- (void)updateUI
{
for (UIButton *cardButton in self.cardButtons) {
  int cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
  Card *card = [self.game cardAtIndex:cardButtonIndex];
  [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
  [cardButton setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
  cardButton.enabled = !card.isMatched;
}
}
- (NSString *)titleForCard:(Card *)card
{
  return card.isChosen ? card.contents : @"";
}

- (UIImage *)backgroundImageForCard:(Card *)card
{
  return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
}










@end
