//
//  CardMatchingGame.m
//  CS63AHomework1
//
//  Created by David Gudeman on 4/20/15.
//  Copyright (c) 2015 David Gudeman. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (nonatomic, readwrite) NSInteger score;
@property (nonatomic, strong) NSMutableArray *cards;  // of cards


@end
@implementation CardMatchingGame

- (NSMutableArray *)cards
{
  
  if (!_cards) _cards = [[NSMutableArray alloc] init];
  return _cards;
}

- (instancetype)initWithCardCount:(NSUInteger)count
                        usingDeck:(Deck *)deck
{
  self = [super init];
  
  if (self) {
    for (int i = 0; i < count; i++) {
      Card *card = [deck drawRandomCard];
      if (card) {
        [self.cards addObject:card];
      } else {
        self = nil;
        break;
      }
    }
  }
  return self;
}

- (Card *)cardAtIndex:(NSUInteger)index
{
   return self.cards[index] ? self.cards[index] : nil;
}

- (void)chooseCardAtIndex:(NSUInteger)index
{
  Card *card = [self cardAtIndex:index];
  

}






























@end
