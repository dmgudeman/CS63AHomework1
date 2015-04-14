//
//  Deck.h
//  CS63AHomework1
//
//  Created by David Gudeman on 4/12/15.
//  Copyright (c) 2015 David Gudeman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

//adds a card to the Deck
-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;


//returns a random card
- (Card *)drawRandomCard;

@end
