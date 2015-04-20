//
//  CardMatchingGame.h
//  CS63AHomework1
//
//  Created by David Gudeman on 4/20/15.
//  Copyright (c) 2015 David Gudeman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

// designated initializer
- (instancetype)initWithCardCount:(NSUInteger)count
                        usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;
  
  @property (nonatomic, readonly) NSInteger score;

@end
