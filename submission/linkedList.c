#include "linkedList.h"
#include <assert.h>
#include <stdlib.h>
#include <stdio.h>

// Double link
struct Link
{
	TYPE value;
	struct Link* next;
	struct Link* prev;
};

// Double linked list with front and back sentinels
struct LinkedList
{
	int size;
	struct Link* frontSentinel;
	struct Link* backSentinel;
};

/**
 * Allocates the list's sentinel and sets the size to 0.
 * The sentinels' next and prev should point to eachother or NULL
 * as appropriate.
 */
static void init(struct LinkedList* list) {
    assert(list != 0);
    list->frontSentinel = malloc(sizeof(struct Link));
	list->backSentinel = malloc(sizeof(struct Link));
	list->size = 0;
	list->frontSentinel->prev = list->backSentinel;
	list->frontSentinel->next = NULL;
	list->backSentinel->next = list->frontSentinel;
	list->backSentinel->prev = NULL;
}

/**
 * Adds a new link with the given value before the given link and
 * increments the list's size.
 */
static void addLinkBefore(struct LinkedList* list, struct Link* link, TYPE value)
{
    assert(list != 0);
    assert(link != 0);
    struct Link* addMe = malloc(sizeof(struct Link));
    addMe->value = value;
    addMe->prev = link;
    addMe->next = link->next;
    link->next = addMe;
    ++list->size;
}

/**
 * Removes the given link from the list and
 * decrements the list's size.
 */
static void removeLink(struct LinkedList* list, struct Link* link)
{
    assert(list != 0);
    assert(link != 0);
    struct Link* garbage = link;
    struct Link* frontOfGarbage = garbage->next;
    struct Link* backOfGarbage = garbage->prev;
    backOfGarbage->next = garbage->next;
    frontOfGarbage->prev = garbage->prev;
    free(garbage);
    --list->size;
}

/**
 * Allocates and initializes a list.
 */
struct LinkedList* linkedListCreate()
{
	struct LinkedList* newDeque = malloc(sizeof(struct LinkedList));
	init(newDeque);
	return newDeque;
}

/**
 * Deallocates every link in the list including the sentinels,
 * and frees the list itself.
 */
void linkedListDestroy(struct LinkedList* list)
{
	while (!linkedListIsEmpty(list))
	{
		linkedListRemoveFront(list);
	}
	free(list->frontSentinel);
	free(list->backSentinel);
	free(list);
}

/**
 * Adds a new link with the given value to the front of the deque.
 */
void linkedListAddFront(struct LinkedList* list, TYPE value)
{
    assert(list != 0);
    struct Link* addMe = malloc(sizeof(struct Link));
    addMe->value = value;
    struct Link* oldFront = list->frontSentinel->prev;
    oldFront->next = addMe;
    addMe->prev = oldFront;
    addMe->next = list->frontSentinel;
    list->frontSentinel->prev = addMe;
}

/**
 * Adds a new link with the given value to the back of the deque.
 */
void linkedListAddBack(struct LinkedList* list, TYPE value)
{
    assert(list != 0);
    struct Link* addMe = malloc(sizeof(struct Link));
    addMe->value = value;
    struct Link* oldBack = list->backSentinel->next;
    oldBack->prev = addMe;
    addMe->next = oldBack;
    addMe->prev = list->backSentinel;
    list->backSentinel->next = addMe;
}

/**
 * Returns the value of the link at the front of the deque.
 */
TYPE linkedListFront(struct LinkedList* list)
{
    assert(list != 0);
    struct Link* target = list->frontSentinel->prev;
    return target->value;
}

/**
 * Returns the value of the link at the back of the deque.
 */
TYPE linkedListBack(struct LinkedList* list)
{
    assert(list != 0);
    struct Link* target = list->backSentinel->next;
    return target->value;
}

/**
 * Removes the link at the front of the deque.
 */
void linkedListRemoveFront(struct LinkedList* list)
{
    assert(list != 0);
    if(!linkedListIsEmpty(list)){
        struct Link* garbage = list->frontSentinel->prev;
        list->frontSentinel->prev = garbage->prev;
        struct Link* newFront = garbage->prev;
        newFront->next = list->frontSentinel;
        free(garbage);
    }
}

/**
 * Removes the link at the back of the deque.
 */
void linkedListRemoveBack(struct LinkedList* list)
{
    assert(list != 0);
    if(!linkedListIsEmpty(list)){
        struct Link* garbage = list->backSentinel->next;
        list->backSentinel->next = garbage->next;
        struct Link* newBack = garbage->next;
        newBack->prev = list->backSentinel;
        free(garbage);
    }
}

/**
 * Returns 1 if the deque is empty and 0 otherwise.
 */
int linkedListIsEmpty(struct LinkedList* list)
{
    assert(list != 0);
    if(list->frontSentinel->prev == list->backSentinel){
        return 1;
    } else {
        return 0;
    }
}

/**
 * Prints the values of the links in the deque from front to back.
 */
void linkedListPrint(struct LinkedList* list)
{
    assert(list != 0);
    if(!linkedListIsEmpty(list)) {
        struct Link *currentLink = list->frontSentinel->prev;
        printf("The values in the deque are:\n");
        while(currentLink != list->backSentinel){
            printf("%d\n", currentLink->value);
            currentLink = currentLink->prev;
        }
    }
}

/**
 * Adds a link with the given value to the bag.
 */
void linkedListAdd(struct LinkedList* list, TYPE value)
{
    assert(list != 0);
    linkedListAddBack(list, value);

}

/**
 * Returns 1 if a link with the value is in the bag and 0 otherwise.
 */
int linkedListContains(struct LinkedList* list, TYPE value)
{
    assert(list != 0);
    struct Link* searchLink = list->frontSentinel->prev;
    while(searchLink != list->backSentinel){
        if(searchLink->value == value){
            return 1;
        } else {
            searchLink = searchLink->prev;
        }
    }
    return 0;
}

/**
 * Removes the first occurrence of a link with the given value.
 */
void linkedListRemove(struct LinkedList* list, TYPE value)
{
    assert(list != 0);
    struct Link* searchLink = list->frontSentinel->prev;
    while(searchLink != list->backSentinel){
        if(searchLink->value == value){
            removeLink(list, searchLink);
            return;
        }
        searchLink = searchLink->prev;
    }
}
