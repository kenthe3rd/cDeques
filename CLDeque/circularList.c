#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "circularList.h"

// Double link
struct Link
{
	TYPE value;
	struct Link * next;
	struct Link * prev;
};

struct CircularList
{
	int size;
	struct Link* sentinel;
};

/**
 * Allocates the list's sentinel and sets the size to 0.
 * The sentinel's next and prev should point to the sentinel itself.
 */
static void init(struct CircularList* list)
{
	assert(list != 0);
	list->size = 0;
	list->sentinel = malloc(sizeof(struct Link));
	assert(list->sentinel != 0);
	list->sentinel->next = list->sentinel;
	list->sentinel->prev = list->sentinel;
}

/**
 * Creates a link with the given value and NULL next and prev pointers.
 */
static struct Link* createLink(TYPE value)
{
	struct Link* newLink;
	newLink = malloc(sizeof(struct Link));
	assert(newLink != 0);
	newLink->value = value;
	newLink->next = NULL;
	newLink->prev = NULL;
	return newLink;
}

/**
 * Adds a new link with the given value after the given link and
 * increments the list's size.
 */
static void addLinkAfter(struct CircularList* list, struct Link* link, TYPE value)
{
	assert(list != 0);
	assert(link != 0);
	struct Link* searchingLink = list->sentinel;
	do{
		if(searchingLink == link){
			struct Link* addMe = createLink(value);
			addMe->next = searchingLink->next;
			addMe->prev = searchingLink;
			searchingLink->next = addMe;
			++list->size;
			return;
		} else {
			searchingLink = searchingLink->next;
		}
	}while(searchingLink != list->sentinel);
}

/**
 * Removes the given link from the list and
 * decrements the list's size.
 */
static void removeLink(struct CircularList* list, struct Link* link)
{
	assert(list != 0);
	assert(link != 0);
	struct Link* searchingLink = list->sentinel;
	if(!circularListIsEmpty(list)){
		do {
			if (searchingLink == link) {
				struct Link* garbage = searchingLink;
				struct Link* garbPrev = garbage->prev;
				struct Link* garbNext = garbage->next;
				garbPrev->next = garbage->next;
				garbNext->prev = garbage->prev;
				free(garbage);
				--list->size;
				return;
			}
		} while (searchingLink != list->sentinel);
	}
}

/**
 * Allocates and initializes a list.
 */
struct CircularList* circularListCreate()
{
	struct CircularList* list = malloc(sizeof(struct CircularList));
	init(list);
	return list;
}

/**
 * Deallocates every link in the list and frees the list pointer.
 */
void circularListDestroy(struct CircularList* list)
{
	assert(list != 0);
	struct Link* garbage = list->sentinel;
	struct Link* next = garbage->next;
	while(next != list->sentinel){
		garbage = next;
		next = garbage->next;
		free(garbage);
	}
	//free the sentinel
	free(next);
	free(list);
}

/**
 * Adds a new link with the given value to the front of the deque.
 */
void circularListAddFront(struct CircularList* list, TYPE value)
{
	assert(list != 0);
	struct Link* addMe = createLink(value);
	struct Link* sentinel = list->sentinel;
	if(circularListIsEmpty(list)){
		sentinel->next = addMe;
		sentinel->prev = addMe;
		addMe->next = sentinel;
		addMe->prev = sentinel;
	} else {
		struct Link* oldFront = list->sentinel->prev;
		addMe->next = list->sentinel;
		addMe->prev = oldFront;
		oldFront->next = addMe;
		list->sentinel->prev = addMe;
	}
	++list->size;
}

/**
 * Adds a new link with the given value to the back of the deque.
 */
void circularListAddBack(struct CircularList* list, TYPE value)
{
	assert(list != 0);
	struct Link* addMe = createLink(value);
	struct Link* sentinel = list->sentinel;
	if(circularListIsEmpty(list)){
		sentinel->next = addMe;
		sentinel->prev = addMe;
		addMe->next = sentinel;
		addMe->prev = sentinel;
	} else {
		struct Link* oldBack = list->sentinel->next;
		addMe->prev = list->sentinel;
		addMe->next = oldBack;
		oldBack->prev = addMe;
		list->sentinel->next = addMe;
	}
	++list->size;
}

/**
 * Returns the value of the link at the front of the deque.
 */
TYPE circularListFront(struct CircularList* list)
{
	assert(list != 0);
	if(!circularListIsEmpty(list)){
		return list->sentinel->prev->value;
	}
	return 0;
}

/**
 * Returns the value of the link at the back of the deque.
 */
TYPE circularListBack(struct CircularList* list)
{
	assert(list != 0);
	if(!circularListIsEmpty(list)){
		return list->sentinel->next->value;
	}
	return 0;
}

/**
 * Removes the link at the front of the deque.
 */
void circularListRemoveFront(struct CircularList* list)
{
	assert(list != 0);
	if(circularListIsEmpty(list)){
		return;
	} else {
		struct Link* oldFront = list->sentinel->prev;
		struct Link* newFront = oldFront->prev;
		newFront->next = list->sentinel;
		list->sentinel->prev = newFront;
		free(oldFront);
		--list->size;
	}
}

/**
 * Removes the link at the back of the deque.
 */
void circularListRemoveBack(struct CircularList* list)
{
	assert(list != 0);
	if(circularListIsEmpty(list)){
		return;
	} else {
		struct Link* oldBack = list->sentinel->next;
		struct Link* newBack = oldBack->next;
		newBack->prev = list->sentinel;
		list->sentinel->next = newBack;
		free(oldBack);
		--list->size;
	}
}

/**
 * Returns 1 if the deque is empty and 0 otherwise.
 */
int circularListIsEmpty(struct CircularList* list)
{
	assert(list != 0);
	if(list->sentinel->next == list->sentinel) {
		return 1;
	} else {
		return 0;
	}
}

/**
 * Prints the values of the links in the deque from front to back.
 */
void circularListPrint(struct CircularList* list)
{
	assert(list != 0);
	if(circularListIsEmpty(list)){
		return;
	} else {
		printf("The values in the deque are:\n");
		struct Link* currentLink = list->sentinel->prev;
		do{
			printf("%f\n", currentLink->value);
			currentLink = currentLink->prev;
		}while(currentLink != list->sentinel);
	}
}

/**
 * Reverses the deque.
 */
void circularListReverse(struct CircularList* list)
{
	assert(list != 0);
	if(circularListIsEmpty(list)){
		return;
	} else {
		struct Link* swapper = list->sentinel;
		struct Link* nextLink;
		struct Link* temp;
		do{
			nextLink = swapper->next;
			temp = swapper->prev;
			swapper->prev = swapper->next;
			swapper->next = temp;
			swapper = nextLink;
		}while(swapper != list->sentinel);
	}
}
