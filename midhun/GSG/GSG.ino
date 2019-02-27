#include <digitalWriteFast.h>
#include <Talkie.h>
#include <TalkieUtils.h>
#include <Vocab_Soundbites.h>
#include <Vocab_Special.h>
#include <Vocab_Toms_Diner.h>
#include <Vocab_US_Acorn.h>
#include <Vocab_US_Clock.h>
#include <Vocab_US_Large.h>
#include <Vocab_US_TI99.h>



/*
This code is for the first responder remote gas detection "grenade"
The small hand held device can be thrown or launched into a hazardous environment to remotely monitor gas levels
*/
//All below info from original talkie code
// Talkie library
// Copyright 2011 Peter Knight
// This code is released under GPLv2 license.
// The sayNumber() function can say any number under a million by
// building the number from short phrases.

#include "talkie.h"

Talkie voice;
//Defining words
const uint8_t spZERO[]     PROGMEM = {0x69, 0xFB, 0x59, 0xDD, 0x51, 0xD5, 0xD7, 0xB5, 0x6F, 0x0A, 0x78, 0xC0, 0x52, 0x01, 0x0F, 0x50, 0xAC, 0xF6, 0xA8, 0x16, 0x15, 0xF2, 0x7B, 0xEA, 0x19, 0x47, 0xD0, 0x64, 0xEB, 0xAD, 0x76, 0xB5, 0xEB, 0xD1, 0x96, 0x24, 0x6E, 0x62, 0x6D, 0x5B, 0x1F, 0x0A, 0xA7, 0xB9, 0xC5, 0xAB, 0xFD, 0x1A, 0x62, 0xF0, 0xF0, 0xE2, 0x6C, 0x73, 0x1C, 0x73, 0x52, 0x1D, 0x19, 0x94, 0x6F, 0xCE, 0x7D, 0xED, 0x6B, 0xD9, 0x82, 0xDC, 0x48, 0xC7, 0x2E, 0x71, 0x8B, 0xBB, 0xDF, 0xFF, 0x1F};
const uint8_t spONE[]      PROGMEM = {0x66, 0x4E, 0xA8, 0x7A, 0x8D, 0xED, 0xC4, 0xB5, 0xCD, 0x89, 0xD4, 0xBC, 0xA2, 0xDB, 0xD1, 0x27, 0xBE, 0x33, 0x4C, 0xD9, 0x4F, 0x9B, 0x4D, 0x57, 0x8A, 0x76, 0xBE, 0xF5, 0xA9, 0xAA, 0x2E, 0x4F, 0xD5, 0xCD, 0xB7, 0xD9, 0x43, 0x5B, 0x87, 0x13, 0x4C, 0x0D, 0xA7, 0x75, 0xAB, 0x7B, 0x3E, 0xE3, 0x19, 0x6F, 0x7F, 0xA7, 0xA7, 0xF9, 0xD0, 0x30, 0x5B, 0x1D, 0x9E, 0x9A, 0x34, 0x44, 0xBC, 0xB6, 0x7D, 0xFE, 0x1F};
const uint8_t spTWO[]      PROGMEM = {0x06, 0xB8, 0x59, 0x34, 0x00, 0x27, 0xD6, 0x38, 0x60, 0x58, 0xD3, 0x91, 0x55, 0x2D, 0xAA, 0x65, 0x9D, 0x4F, 0xD1, 0xB8, 0x39, 0x17, 0x67, 0xBF, 0xC5, 0xAE, 0x5A, 0x1D, 0xB5, 0x7A, 0x06, 0xF6, 0xA9, 0x7D, 0x9D, 0xD2, 0x6C, 0x55, 0xA5, 0x26, 0x75, 0xC9, 0x9B, 0xDF, 0xFC, 0x6E, 0x0E, 0x63, 0x3A, 0x34, 0x70, 0xAF, 0x3E, 0xFF, 0x1F};
const uint8_t spTHREE[]    PROGMEM = {0x0C, 0xE8, 0x2E, 0x94, 0x01, 0x4D, 0xBA, 0x4A, 0x40, 0x03, 0x16, 0x68, 0x69, 0x36, 0x1C, 0xE9, 0xBA, 0xB8, 0xE5, 0x39, 0x70, 0x72, 0x84, 0xDB, 0x51, 0xA4, 0xA8, 0x4E, 0xA3, 0xC9, 0x77, 0xB1, 0xCA, 0xD6, 0x52, 0xA8, 0x71, 0xED, 0x2A, 0x7B, 0x4B, 0xA6, 0xE0, 0x37, 0xB7, 0x5A, 0xDD, 0x48, 0x8E, 0x94, 0xF1, 0x64, 0xCE, 0x6D, 0x19, 0x55, 0x91, 0xBC, 0x6E, 0xD7, 0xAD, 0x1E, 0xF5, 0xAA, 0x77, 0x7A, 0xC6, 0x70, 0x22, 0xCD, 0xC7, 0xF9, 0x89, 0xCF, 0xFF, 0x03};
const uint8_t spFOUR[]     PROGMEM = {0x08, 0x68, 0x21, 0x0D, 0x03, 0x04, 0x28, 0xCE, 0x92, 0x03, 0x23, 0x4A, 0xCA, 0xA6, 0x1C, 0xDA, 0xAD, 0xB4, 0x70, 0xED, 0x19, 0x64, 0xB7, 0xD3, 0x91, 0x45, 0x51, 0x35, 0x89, 0xEA, 0x66, 0xDE, 0xEA, 0xE0, 0xAB, 0xD3, 0x29, 0x4F, 0x1F, 0xFA, 0x52, 0xF6, 0x90, 0x52, 0x3B, 0x25, 0x7F, 0xDD, 0xCB, 0x9D, 0x72, 0x72, 0x8C, 0x79, 0xCB, 0x6F, 0xFA, 0xD2, 0x10, 0x9E, 0xB4, 0x2C, 0xE1, 0x4F, 0x25, 0x70, 0x3A, 0xDC, 0xBA, 0x2F, 0x6F, 0xC1, 0x75, 0xCB, 0xF2, 0xFF};
const uint8_t spFIVE[]     PROGMEM = {0x08, 0x68, 0x4E, 0x9D, 0x02, 0x1C, 0x60, 0xC0, 0x8C, 0x69, 0x12, 0xB0, 0xC0, 0x28, 0xAB, 0x8C, 0x9C, 0xC0, 0x2D, 0xBB, 0x38, 0x79, 0x31, 0x15, 0xA3, 0xB6, 0xE4, 0x16, 0xB7, 0xDC, 0xF5, 0x6E, 0x57, 0xDF, 0x54, 0x5B, 0x85, 0xBE, 0xD9, 0xE3, 0x5C, 0xC6, 0xD6, 0x6D, 0xB1, 0xA5, 0xBF, 0x99, 0x5B, 0x3B, 0x5A, 0x30, 0x09, 0xAF, 0x2F, 0xED, 0xEC, 0x31, 0xC4, 0x5C, 0xBE, 0xD6, 0x33, 0xDD, 0xAD, 0x88, 0x87, 0xE2, 0xD2, 0xF2, 0xF4, 0xE0, 0x16, 0x2A, 0xB2, 0xE3, 0x63, 0x1F, 0xF9, 0xF0, 0xE7, 0xFF, 0x01};
const uint8_t spSIX[]      PROGMEM = {0x04, 0xF8, 0xAD, 0x4C, 0x02, 0x16, 0xB0, 0x80, 0x06, 0x56, 0x35, 0x5D, 0xA8, 0x2A, 0x6D, 0xB9, 0xCD, 0x69, 0xBB, 0x2B, 0x55, 0xB5, 0x2D, 0xB7, 0xDB, 0xFD, 0x9C, 0x0D, 0xD8, 0x32, 0x8A, 0x7B, 0xBC, 0x02, 0x00, 0x03, 0x0C, 0xB1, 0x2E, 0x80, 0xDF, 0xD2, 0x35, 0x20, 0x01, 0x0E, 0x60, 0xE0, 0xFF, 0x01};
const uint8_t spSEVEN[]    PROGMEM = {0x0C, 0xF8, 0x5E, 0x4C, 0x01, 0xBF, 0x95, 0x7B, 0xC0, 0x02, 0x16, 0xB0, 0xC0, 0xC8, 0xBA, 0x36, 0x4D, 0xB7, 0x27, 0x37, 0xBB, 0xC5, 0x29, 0xBA, 0x71, 0x6D, 0xB7, 0xB5, 0xAB, 0xA8, 0xCE, 0xBD, 0xD4, 0xDE, 0xA6, 0xB2, 0x5A, 0xB1, 0x34, 0x6A, 0x1D, 0xA7, 0x35, 0x37, 0xE5, 0x5A, 0xAE, 0x6B, 0xEE, 0xD2, 0xB6, 0x26, 0x4C, 0x37, 0xF5, 0x4D, 0xB9, 0x9A, 0x34, 0x39, 0xB7, 0xC6, 0xE1, 0x1E, 0x81, 0xD8, 0xA2, 0xEC, 0xE6, 0xC7, 0x7F, 0xFE, 0xFB, 0x7F};
const uint8_t spEIGHT[]    PROGMEM = {0x65, 0x69, 0x89, 0xC5, 0x73, 0x66, 0xDF, 0xE9, 0x8C, 0x33, 0x0E, 0x41, 0xC6, 0xEA, 0x5B, 0xEF, 0x7A, 0xF5, 0x33, 0x25, 0x50, 0xE5, 0xEA, 0x39, 0xD7, 0xC5, 0x6E, 0x08, 0x14, 0xC1, 0xDD, 0x45, 0x64, 0x03, 0x00, 0x80, 0x00, 0xAE, 0x70, 0x33, 0xC0, 0x73, 0x33, 0x1A, 0x10, 0x40, 0x8F, 0x2B, 0x14, 0xF8, 0x7F};
const uint8_t spNINE[]     PROGMEM = {0xE6, 0xA8, 0x1A, 0x35, 0x5D, 0xD6, 0x9A, 0x35, 0x4B, 0x8C, 0x4E, 0x6B, 0x1A, 0xD6, 0xA6, 0x51, 0xB2, 0xB5, 0xEE, 0x58, 0x9A, 0x13, 0x4F, 0xB5, 0x35, 0x67, 0x68, 0x26, 0x3D, 0x4D, 0x97, 0x9C, 0xBE, 0xC9, 0x75, 0x2F, 0x6D, 0x7B, 0xBB, 0x5B, 0xDF, 0xFA, 0x36, 0xA7, 0xEF, 0xBA, 0x25, 0xDA, 0x16, 0xDF, 0x69, 0xAC, 0x23, 0x05, 0x45, 0xF9, 0xAC, 0xB9, 0x8F, 0xA3, 0x97, 0x20, 0x73, 0x9F, 0x54, 0xCE, 0x1E, 0x45, 0xC2, 0xA2, 0x4E, 0x3E, 0xD3, 0xD5, 0x3D, 0xB1, 0x79, 0x24, 0x0D, 0xD7, 0x48, 0x4C, 0x6E, 0xE1, 0x2C, 0xDE, 0xFF, 0x0F};
const uint8_t spTEN[]      PROGMEM = {0x0E, 0x38, 0x3C, 0x2D, 0x00, 0x5F, 0xB6, 0x19, 0x60, 0xA8, 0x90, 0x93, 0x36, 0x2B, 0xE2, 0x99, 0xB3, 0x4E, 0xD9, 0x7D, 0x89, 0x85, 0x2F, 0xBE, 0xD5, 0xAD, 0x4F, 0x3F, 0x64, 0xAB, 0xA4, 0x3E, 0xBA, 0xD3, 0x59, 0x9A, 0x2E, 0x75, 0xD5, 0x39, 0x6D, 0x6B, 0x0A, 0x2D, 0x3C, 0xEC, 0xE5, 0xDD, 0x1F, 0xFE, 0xB0, 0xE7, 0xFF, 0x03};
const uint8_t spELEVEN[]   PROGMEM = {0xA5, 0xEF, 0xD6, 0x50, 0x3B, 0x67, 0x8F, 0xB9, 0x3B, 0x23, 0x49, 0x7F, 0x33, 0x87, 0x31, 0x0C, 0xE9, 0x22, 0x49, 0x7D, 0x56, 0xDF, 0x69, 0xAA, 0x39, 0x6D, 0x59, 0xDD, 0x82, 0x56, 0x92, 0xDA, 0xE5, 0x74, 0x9D, 0xA7, 0xA6, 0xD3, 0x9A, 0x53, 0x37, 0x99, 0x56, 0xA6, 0x6F, 0x4F, 0x59, 0x9D, 0x7B, 0x89, 0x2F, 0xDD, 0xC5, 0x28, 0xAA, 0x15, 0x4B, 0xA3, 0xD6, 0xAE, 0x8C, 0x8A, 0xAD, 0x54, 0x3B, 0xA7, 0xA9, 0x3B, 0xB3, 0x54, 0x5D, 0x33, 0xE6, 0xA6, 0x5C, 0xCB, 0x75, 0xCD, 0x5E, 0xC6, 0xDA, 0xA4, 0xCA, 0xB9, 0x35, 0xAE, 0x67, 0xB8, 0x46, 0x40, 0xB6, 0x28, 0xBB, 0xF1, 0xF6, 0xB7, 0xB9, 0x47, 0x20, 0xB6, 0x28, 0xBB, 0xFF, 0x0F};
const uint8_t spTWELVE[]   PROGMEM = {0x09, 0x98, 0xDA, 0x22, 0x01, 0x37, 0x78, 0x1A, 0x20, 0x85, 0xD1, 0x50, 0x3A, 0x33, 0x11, 0x81, 0x5D, 0x5B, 0x95, 0xD4, 0x44, 0x04, 0x76, 0x9D, 0xD5, 0xA9, 0x3A, 0xAB, 0xF0, 0xA1, 0x3E, 0xB7, 0xBA, 0xD5, 0xA9, 0x2B, 0xEB, 0xCC, 0xA0, 0x3E, 0xB7, 0xBD, 0xC3, 0x5A, 0x3B, 0xC8, 0x69, 0x67, 0xBD, 0xFB, 0xE8, 0x67, 0xBF, 0xCA, 0x9D, 0xE9, 0x74, 0x08, 0xE7, 0xCE, 0x77, 0x78, 0x06, 0x89, 0x32, 0x57, 0xD6, 0xF1, 0xF1, 0x8F, 0x7D, 0xFE, 0x1F};
const uint8_t spTHIR_[]    PROGMEM = {0x04, 0xA8, 0xBE, 0x5C, 0x00, 0xDD, 0xA5, 0x11, 0xA0, 0xFA, 0x72, 0x02, 0x74, 0x97, 0xC6, 0x01, 0x09, 0x9C, 0xA6, 0xAB, 0x30, 0x0D, 0xCE, 0x7A, 0xEA, 0x6A, 0x4A, 0x39, 0x35, 0xFB, 0xAA, 0x8B, 0x1B, 0xC6, 0x76, 0xF7, 0xAB, 0x2E, 0x79, 0x19, 0xCA, 0xD5, 0xEF, 0xCA, 0x57, 0x08, 0x14, 0xA1, 0xDC, 0x45, 0x64, 0x03, 0x00, 0xC0, 0xFF, 0x03};
const uint8_t spFIF_[]     PROGMEM = {0x08, 0x98, 0x31, 0x93, 0x02, 0x1C, 0xE0, 0x80, 0x07, 0x5A, 0xD6, 0x1C, 0x6B, 0x78, 0x2E, 0xBD, 0xE5, 0x2D, 0x4F, 0xDD, 0xAD, 0xAB, 0xAA, 0x6D, 0xC9, 0x23, 0x02, 0x56, 0x4C, 0x93, 0x00, 0x05, 0x10, 0x90, 0x89, 0x31, 0xFC, 0x3F};
const uint8_t sp_TEEN[]    PROGMEM = {0x09, 0x58, 0x2A, 0x25, 0x00, 0xCB, 0x9F, 0x95, 0x6C, 0x14, 0x21, 0x89, 0xA9, 0x78, 0xB3, 0x5B, 0xEC, 0xBA, 0xB5, 0x23, 0x13, 0x46, 0x97, 0x99, 0x3E, 0xD6, 0xB9, 0x2E, 0x79, 0xC9, 0x5B, 0xD8, 0x47, 0x41, 0x53, 0x1F, 0xC7, 0xE1, 0x9C, 0x85, 0x54, 0x22, 0xEC, 0xFA, 0xDB, 0xDD, 0x23, 0x93, 0x49, 0xB8, 0xE6, 0x78, 0xFF, 0x3F};
const uint8_t spTWENTY[]   PROGMEM = {0x0A, 0xE8, 0x4A, 0xCD, 0x01, 0xDB, 0xB9, 0x33, 0xC0, 0xA6, 0x54, 0x0C, 0xA4, 0x34, 0xD9, 0xF2, 0x0A, 0x6C, 0xBB, 0xB3, 0x53, 0x0E, 0x5D, 0xA6, 0x25, 0x9B, 0x6F, 0x75, 0xCA, 0x61, 0x52, 0xDC, 0x74, 0x49, 0xA9, 0x8A, 0xC4, 0x76, 0x4D, 0xD7, 0xB1, 0x76, 0xC0, 0x55, 0xA6, 0x65, 0xD8, 0x26, 0x99, 0x5C, 0x56, 0xAD, 0xB9, 0x25, 0x23, 0xD5, 0x7C, 0x32, 0x96, 0xE9, 0x9B, 0x20, 0x7D, 0xCB, 0x3C, 0xFA, 0x55, 0xAE, 0x99, 0x1A, 0x30, 0xFC, 0x4B, 0x3C, 0xFF, 0x1F};
const uint8_t spT[]        PROGMEM = {0x01, 0xD8, 0xB6, 0xDD, 0x01, 0x2F, 0xF4, 0x38, 0x60, 0xD5, 0xD1, 0x91, 0x4D, 0x97, 0x84, 0xE6, 0x4B, 0x4E, 0x36, 0xB2, 0x10, 0x67, 0xCD, 0x19, 0xD9, 0x2C, 0x01, 0x94, 0xF1, 0x78, 0x66, 0x33, 0xEB, 0x79, 0xAF, 0x7B, 0x57, 0x87, 0x36, 0xAF, 0x52, 0x08, 0x9E, 0x6B, 0xEA, 0x5A, 0xB7, 0x7A, 0x94, 0x73, 0x45, 0x47, 0xAC, 0x5A, 0x9C, 0xAF, 0xFF, 0x07};
const uint8_t spHUNDRED[]  PROGMEM = {0x04, 0xC8, 0x7E, 0x5C, 0x02, 0x0A, 0xA8, 0x62, 0x43, 0x03, 0xA7, 0xA8, 0x62, 0x43, 0x4B, 0x97, 0xDC, 0xF2, 0x14, 0xC5, 0xA7, 0x9B, 0x7A, 0xD3, 0x95, 0x37, 0xC3, 0x1E, 0x16, 0x4A, 0x66, 0x36, 0xF3, 0x5A, 0x89, 0x6E, 0xD4, 0x30, 0x55, 0xB5, 0x32, 0xB7, 0x31, 0xB5, 0xC1, 0x69, 0x2C, 0xE9, 0xF7, 0xBC, 0x96, 0x12, 0x39, 0xD4, 0xB5, 0xFD, 0xDA, 0x9B, 0x0F, 0xD1, 0x90, 0xEE, 0xF5, 0xE4, 0x17, 0x02, 0x45, 0x28, 0x77, 0x11, 0xD9, 0x40, 0x9E, 0x45, 0xDD, 0x2B, 0x33, 0x71, 0x7A, 0xBA, 0x0B, 0x13, 0x95, 0x2D, 0xF9, 0xF9, 0x7F};
const uint8_t spTHOUSAND[] PROGMEM = {0x0C, 0xE8, 0x2E, 0xD4, 0x02, 0x06, 0x98, 0xD2, 0x55, 0x03, 0x16, 0x68, 0x7D, 0x17, 0xE9, 0x6E, 0xBC, 0x65, 0x8C, 0x45, 0x6D, 0xA6, 0xE9, 0x96, 0xDD, 0xDE, 0xF6, 0xB6, 0xB7, 0x5E, 0x75, 0xD4, 0x93, 0xA5, 0x9C, 0x7B, 0x57, 0xB3, 0x6E, 0x7D, 0x12, 0x19, 0xAD, 0xDC, 0x29, 0x8D, 0x4F, 0x93, 0xB4, 0x87, 0xD2, 0xB6, 0xFC, 0xDD, 0xAC, 0x22, 0x56, 0x02, 0x70, 0x18, 0xCA, 0x18, 0x26, 0xB5, 0x90, 0xD4, 0xDE, 0x6B, 0x29, 0xDA, 0x2D, 0x25, 0x17, 0x8D, 0x79, 0x88, 0xD4, 0x48, 0x79, 0x5D, 0xF7, 0x74, 0x75, 0xA1, 0x94, 0xA9, 0xD1, 0xF2, 0xED, 0x9E, 0xAA, 0x51, 0xA6, 0xD4, 0x9E, 0x7F, 0xED, 0x6F, 0xFE, 0x2B, 0xD1, 0xC7, 0x3D, 0x89, 0xFA, 0xB7, 0x0D, 0x57, 0xD3, 0xB4, 0xF5, 0x37, 0x55, 0x37, 0x2E, 0xE6, 0xB2, 0xD7, 0x57, 0xFF, 0x0F};
const uint8_t spAND[]      PROGMEM = {0xA9, 0x6B, 0x21, 0xB9, 0x22, 0x66, 0x9F, 0xAE, 0xC7, 0xE1, 0x70, 0x7B, 0x72, 0xBB, 0x5B, 0xDF, 0xEA, 0x56, 0xBB, 0x5C, 0x65, 0xCB, 0x66, 0xC5, 0x3D, 0x67, 0xD7, 0xAB, 0x6D, 0x2E, 0x64, 0x30, 0x93, 0xEE, 0xB1, 0xCD, 0x3D, 0x92, 0xB9, 0x9A, 0xDA, 0xB2, 0x8E, 0x40, 0x12, 0x9A, 0x6A, 0xEB, 0x96, 0x8F, 0x78, 0x98, 0xB3, 0x2A, 0xB4, 0xD3, 0x48, 0xAA, 0x2F, 0x7D, 0xA7, 0x7B, 0xFB, 0x0C, 0x73, 0x71, 0x5C, 0xCE, 0x6E, 0x5C, 0x52, 0x6C, 0x73, 0x79, 0x9A, 0x13, 0x4B, 0x89, 0x45, 0xE9, 0x6E, 0x49, 0x42, 0xA9, 0x57, 0xFF, 0x3F};
const uint8_t spMINUS[]    PROGMEM = {0xE6, 0x28, 0xC4, 0xF8, 0x44, 0x9A, 0xFB, 0xCD, 0xAD, 0x8D, 0x2A, 0x4E, 0x4A, 0xBC, 0xB8, 0x8C, 0xB9, 0x8A, 0xA9, 0x48, 0xED, 0x72, 0x87, 0xD3, 0x74, 0x3B, 0x1A, 0xA9, 0x9D, 0x6F, 0xB3, 0xCA, 0x5E, 0x8C, 0xC3, 0x7B, 0xF2, 0xCE, 0x5A, 0x5E, 0x35, 0x66, 0x5A, 0x3A, 0xAE, 0x55, 0xEB, 0x9A, 0x57, 0x75, 0xA9, 0x29, 0x6B, 0xEE, 0xB6, 0xD5, 0x4D, 0x37, 0xEF, 0xB5, 0x5D, 0xC5, 0x95, 0x84, 0xE5, 0xA6, 0xFC, 0x30, 0xE0, 0x97, 0x0C, 0x0D, 0x58, 0x40, 0x03, 0x1C, 0xA0, 0xC0, 0xFF, 0x03};
const uint8_t spMILLI[]    PROGMEM = {0x6E, 0xF0, 0x8A, 0xB3, 0x4B, 0xEB, 0xC6, 0xAE, 0x36, 0xA7, 0x1A, 0x3A, 0x54, 0x53, 0xD6, 0xDC, 0xEC, 0x66, 0x23, 0xDF, 0x58, 0x26, 0x43, 0xB4, 0xCD, 0xEA, 0x74, 0x5D, 0x94, 0x46, 0xF0, 0x96, 0x3B, 0x9D, 0x79, 0x98, 0x26, 0x75, 0xDB, 0xB3, 0xD7, 0xB6, 0xF5, 0x90, 0xA8, 0x91, 0x9F, 0xEA, 0x9E, 0xEE, 0xE9, 0x9B, 0x20, 0x7D, 0xCB, 0xFF, 0x03};
const uint8_t spVOLTS[]    PROGMEM = {0xA0, 0xDA, 0xA2, 0xB2, 0x3A, 0x44, 0x55, 0x9C, 0xFA, 0xB0, 0xBA, 0x46, 0x72, 0xDA, 0xD1, 0xDB, 0xAE, 0x47, 0x59, 0x61, 0xED, 0x28, 0x79, 0xED, 0x45, 0xAF, 0x5A, 0xDF, 0x60, 0xF4, 0x39, 0x69, 0xAB, 0x63, 0xD9, 0x3B, 0xD2, 0xBC, 0x24, 0xA5, 0xF5, 0xB6, 0x0F, 0x80, 0x01, 0x3E, 0x63, 0x65, 0xC0, 0x5F, 0x63, 0x12, 0x90, 0x80, 0x06, 0x24, 0x20, 0x01, 0x0E, 0xFC, 0x3F};

const uint8_t spSMOKE[]         PROGMEM = {0x08,0xF8,0xBB,0x4D,0x02,0x0A,0x78,0x33,0xCC,0x03,0x1E,0x40,0x40,0x53,0x1A,0x22,0xC8,0x92,0x35,0x87,0x92,0xD4,0x74,0x95,0x99,0x55,0x7B,0x52,0xB7,0x5D,0xEE,0x72,0x57,0xAD,0xF7,0x6E,0xA2,0x84,0xFB,0xD6,0xD1,0x6D,0x4E,0x6E,0x84,0xA3,0x37,0x84,0x8B,0x50,0xEE,0x22,0xB2,0x01,0x80,0x01,0x75,0x14,0x7B,0x80,0x01,0x39,0x98,0xFC,0x3F};
const uint8_t spPROBE[]         PROGMEM = {0x02,0xC8,0x29,0x5D,0x03,0x2E,0x0A,0x83,0xCB,0x5D,0x33,0xF7,0xFC,0x94,0xD1,0x96,0x57,0x71,0xF2,0x53,0x66,0xDE,0xE9,0x8D,0xDE,0x76,0x3D,0xDB,0x3E,0x95,0xDD,0xBB,0x8E,0x54,0xEA,0x13,0x0F,0x73,0x19,0x95,0x91,0x46,0x9E,0xD8,0x23,0x68,0x47,0x47,0x24,0xE1,0x1F,0xFF,0xC3,0xEF,0x4D,0x6A,0x99,0x25,0x49,0x67,0xF4,0x96,0x69,0xBA,0x24,0x5E,0xEE,0xAA,0x91,0x2B,0x59,0xD7,0xFE,0x3F};
const uint8_t spREADY[]         PROGMEM = {0x6A,0xB4,0xD9,0x25,0x4A,0xE5,0xDB,0xD9,0x8D,0xB1,0xB2,0x45,0x9A,0xF6,0xD8,0x9F,0xAE,0x26,0xD7,0x30,0xED,0x72,0xDA,0x9E,0xCD,0x9C,0x6D,0xC9,0x6D,0x76,0xED,0xFA,0xE1,0x93,0x8D,0xAD,0x51,0x1F,0xC7,0xD8,0x13,0x8B,0x5A,0x3F,0x99,0x4B,0x39,0x7A,0x13,0xE2,0xE8,0x3B,0xF5,0xCA,0x77,0x7E,0xC2,0xDB,0x2B,0x8A,0xC7,0xD6,0xFA,0x7F};
const uint8_t spIS[]            PROGMEM = {0xAD,0xED,0xD5,0x58,0xA4,0x9E,0xCE,0x76,0xF5,0xDD,0xAB,0x29,0xF5,0xD2,0xDD,0xEF,0x7E,0x0C,0xC3,0xA9,0x06,0xFA,0xD3,0x32,0x0F,0x6E,0x94,0x22,0x8F,0xF3,0x92,0xF6,0x05,0x43,0xCC,0x74,0x77,0x3E,0xC3,0xF5,0x95,0x98,0xA9,0xBA,0x8B,0x8F,0x00,0x7E,0x73,0xE5,0x00,0x05,0x28,0xF0,0xFF};
const uint8_t spALERT[]         PROGMEM = {0xA5,0xCF,0xC6,0xAB,0x55,0x5B,0xAF,0x39,0xDA,0xC9,0x54,0xDD,0xBC,0xC6,0xC2,0x3C,0x27,0x20,0xCF,0x1C,0xD7,0x30,0xB0,0x45,0x16,0x69,0x1D,0xC3,0x11,0xE4,0x59,0x8A,0x7C,0xB5,0x9B,0x8B,0xD9,0x30,0xB7,0xD3,0x76,0x19,0x9A,0x25,0x59,0x57,0x59,0xEC,0x11,0xAF,0xE8,0xD9,0xF9,0x2A,0x8A,0x1D,0xF0,0x75,0x3F,0x73,0xAC,0x87,0x3B,0xA2,0x0B,0xAA,0x2B,0xCF,0xE4,0x10,0xA1,0xDC,0x45,0x64,0x03,0x00,0x80,0x01,0x66,0x36,0x33,0xC0,0xAB,0xD5,0x0A,0x68,0x25,0x85,0x02,0xFF,0x0F};
const uint8_t spCAUTION[]       PROGMEM = {0x02,0x48,0x69,0x4D,0x03,0x06,0xE8,0x34,0xA2,0x85,0x95,0x4C,0x78,0xA8,0xD2,0x93,0x66,0xB1,0xE9,0x4D,0x79,0x6F,0x7A,0xD3,0x9D,0xF5,0xCC,0x01,0x2B,0x86,0x06,0x60,0xC5,0xAB,0x08,0x44,0x20,0x00,0xCD,0x10,0x8D,0xB6,0x26,0x11,0x8B,0xE8,0x3C,0xE6,0x62,0x5D,0x3D,0x63,0xF7,0x58,0xBB,0x4E,0xF1,0xB0,0x2E,0xED,0x28,0xCA,0x74,0xCC,0x9B,0xB8,0xB7,0x69,0xA6,0x0E,0x8F,0x66,0xBE,0xAC,0x48,0xC6,0xAD,0xAE,0xFB,0x9A,0x16,0x0E,0xF3,0x78,0xFE,0xF3,0xBF,0xFF,0xED,0xFF,0xFF};
const uint8_t spCALIBRATE[]     PROGMEM = {0x0E,0x18,0xC9,0xD9,0x01,0x55,0x29,0x9E,0xA0,0x16,0x97,0x70,0x5F,0x7C,0xB2,0xAA,0xDB,0x2B,0x79,0xCD,0xCD,0x56,0x51,0xC9,0x54,0x0D,0x26,0x1E,0x45,0xC3,0x55,0xDE,0xE2,0xF8,0x54,0xC5,0x94,0xA7,0x73,0x97,0xDB,0x94,0x3E,0xE9,0x52,0x2F,0xF6,0xC2,0x16,0xA9,0x4B,0xB3,0xCC,0x5E,0xD8,0xAA,0x34,0x31,0x73,0x27,0xE5,0x4C,0x8D,0xC3,0xD3,0xF4,0xF6,0xA9,0x2F,0xEB,0xA8,0x2E,0x39,0x42,0xFB,0x8E,0xAB,0x99,0xA4,0x28,0xFF,0x5C,0xEE,0x69,0x97,0x28,0x7D,0x4F,0x7D,0xD2,0xDF,0xAB,0x92,0x98,0x6F,0x41,0x8F,0x08,0xE5,0x2E,0x22,0x1B,0x00,0x18,0xB0,0x42,0xA4,0x02,0x5E,0xA8,0x26,0xC0,0xF0,0xE7,0xFF,0x0F};
const uint8_t spSAFE[]          PROGMEM = {0x08,0xF8,0x39,0x4C,0x02,0x1A,0xD0,0x80,0x05,0x3C,0x60,0x81,0x95,0x0F,0x15,0xE2,0x6A,0xAB,0x4F,0xD1,0x43,0x8A,0x8A,0xBF,0xB9,0xD5,0xAD,0x57,0x3F,0xAA,0x23,0xBB,0x3F,0x9E,0xCB,0xDC,0xF3,0x99,0x9E,0x5E,0x19,0xCD,0xEB,0x8E,0x79,0x7A,0x43,0x13,0xED,0x39,0x0C,0x18,0x7E,0x5C,0x02,0x12,0x90,0x00,0x07,0x28,0x40,0x81,0xFF,0x07};
const uint8_t spSTART[]         PROGMEM = {0x04,0xF8,0xC5,0x9C,0x03,0x1A,0xD0,0x80,0x04,0x38,0x00,0x06,0x58,0x22,0x7D,0x65,0x9D,0x87,0x8B,0x5B,0xD7,0x53,0x67,0x37,0x96,0x21,0x79,0x6F,0x7D,0xEB,0xD5,0x64,0xB7,0x92,0x43,0x9B,0xC7,0x50,0xDD,0x92,0x1D,0xF7,0x9E,0x53,0xDF,0xDD,0x59,0xCB,0x21,0xAD,0xF6,0x46,0xA0,0x08,0xE5,0x2E,0x22,0x1B,0x40,0x01,0xDD,0xB2,0x2A,0xE0,0xB7,0x0C,0x03,0x4C,0x9D,0x4A,0x80,0xEA,0x54,0xFE,0x1F};
//const uint8_t spFIRE[]          PROGMEM = {0x04,0x18,0xCE,0x4D,0x02,0x1A,0xD0,0x80,0x04,0x46,0x91,0x55,0x57,0x07,0x6D,0xD9,0xCD,0xAE,0x4F,0x55,0x5D,0x59,0x87,0xAE,0xB9,0xD5,0x6D,0x5B,0xDB,0x7D,0x93,0xB6,0xED,0xEE,0xE3,0x5A,0x6B,0x6A,0xF4,0x91,0xD5,0x73,0x6B,0x67,0xF5,0x47,0xBC,0xD4,0xA7,0x9C,0xA5,0x34,0xE4,0xD0,0xA6,0xF0,0xE4,0xAA,0xB8,0x2D,0xAB,0xC3,0x9B,0x62,0xC2,0xAC,0x74,0xF6,0x9F,0xFB,0x72,0x0B,0xEC,0x92,0xCD,0xEE,0xCF,0x43,0x69,0x4C,0x5B,0xFF,0x3F};
const uint8_t spBREAK[]         PROGMEM = {0x90,0xC6,0x62,0x2D,0xDC,0xCC,0x76,0xE9,0x63,0x55,0xD3,0x32,0xF5,0xAD,0x4F,0x5D,0x42,0x53,0xF5,0x9D,0xB6,0x14,0x49,0x0D,0xCD,0x73,0xEA,0x5A,0x4C,0xC3,0x6D,0xF3,0x69,0x7A,0x0B,0x52,0x8D,0x25,0xBB,0x9D,0x8B,0xDB,0xC7,0x13,0x90,0x8A,0xC7,0x08,0x14,0xA1,0xDC,0x45,0x64,0x03,0x00,0x03,0xC6,0xA8,0x14,0x40,0xCD,0x4A,0x16,0xE0,0x00,0x06,0xFE,0x1F};

//const uint8_t spA[]             PROGMEM = {0x65,0x2C,0x96,0xAD,0x7B,0x6A,0x9F,0x66,0xE4,0x20,0x8D,0x9C,0x73,0xAB,0x5B,0xDC,0xE2,0x96,0xB7,0xBA,0xF5,0x6A,0x66,0x28,0xA0,0xCE,0xD5,0xBB,0xDB,0xFD,0x1E,0xE6,0x38,0xA7,0x36,0xCF,0x9C,0x80,0x51,0x8B,0xEB,0x52,0xD7,0xBC,0xFF,0x3F};
const uint8_t spB[]             PROGMEM = {0xA6,0x2F,0xAA,0x05,0x5C,0xD6,0x8C,0xBC,0xC7,0x16,0x70,0x59,0x33,0xB2,0x95,0x0B,0xC1,0xFD,0xCD,0xCC,0x66,0x3A,0xF3,0x51,0xAD,0x98,0x00,0x55,0x8B,0x67,0xDB,0xC7,0x3E,0xD5,0xAD,0xEE,0x75,0x2F,0xE7,0x2C,0x4D,0x60,0xBE,0x26,0xDF,0xF1,0x89,0xEF,0xFF,0x03};
const uint8_t spC[]             PROGMEM = {0x04,0xF8,0xA5,0x83,0x03,0x12,0xB0,0x80,0x07,0x22,0xB0,0xC2,0xEE,0x8D,0x45,0x7D,0xC9,0xCA,0x67,0x29,0x42,0xF5,0x35,0x3B,0xDF,0xF9,0x28,0x66,0x0D,0x40,0xCF,0xD7,0xB3,0x1C,0xCD,0xAC,0x06,0x14,0xB5,0x68,0x0E,0x7D,0xEE,0x4B,0xDF,0xD2,0x39,0x5B,0x02,0x44,0xBD,0xCE,0x57,0xBE,0xF2,0x9D,0xEE,0x55,0x0A,0xC1,0x73,0x4D,0x7E,0xF2,0xF3,0xFF};
const uint8_t spD[]             PROGMEM = {0x06,0x98,0x30,0x68,0xE4,0x6B,0x84,0xA0,0xE8,0xD3,0x93,0x8D,0xEC,0x84,0x9E,0x4B,0x6E,0x36,0x8A,0x19,0x0D,0xA8,0xEA,0x71,0xAF,0x7A,0xDF,0xE7,0xB2,0xAD,0xE0,0x00,0xD3,0x8B,0xEB,0x9E,0x8F,0x7C,0xA6,0x73,0xE5,0x40,0xA8,0x5A,0x1C,0xAF,0x78,0xC5,0xDB,0xDF,0xFF,0x0F};
const uint8_t spE[]             PROGMEM = {0xA2,0x59,0x95,0x51,0xBA,0x17,0xF7,0x6A,0x95,0xAB,0x38,0x42,0xE4,0x92,0x5D,0xEE,0x62,0x15,0x33,0x3B,0x50,0xD6,0x92,0x5D,0xAE,0x6A,0xC5,0x04,0xA8,0x5A,0xBC,0xEB,0xDD,0xEC,0x76,0x77,0xBB,0xDF,0xD3,0x9E,0xF6,0x32,0x97,0xBE,0xF5,0xAD,0xED,0xB3,0x34,0x81,0xF9,0x9A,0xFF,0x07};
const uint8_t spF[]             PROGMEM = {0xAB,0x1B,0x61,0x94,0xDD,0xD6,0xDC,0xF1,0x74,0xDD,0x37,0xB9,0xE7,0xEA,0xD3,0x35,0xB3,0x1C,0xE1,0xAF,0x6F,0x77,0xC7,0xB5,0xD4,0xE0,0x56,0x9C,0x77,0xDB,0x5A,0x9D,0xEB,0x98,0x8C,0x61,0xC0,0x30,0xE9,0x1A,0xB0,0x80,0x05,0x14,0x30,0x6D,0xBB,0x06,0x24,0x20,0x01,0x0E,0x10,0xA0,0x06,0xB5,0xFF,0x07};
const uint8_t spG[]             PROGMEM = {0x6E,0x3F,0x29,0x8D,0x98,0x95,0xCD,0x3D,0x00,0xAB,0x38,0x95,0xE2,0xD4,0xEB,0x34,0x81,0x7A,0xF2,0x51,0x53,0x50,0x75,0xEB,0xCE,0x76,0xB6,0xD3,0x95,0x8D,0x92,0x48,0x99,0xAB,0x77,0xBE,0xCB,0xDD,0x8E,0x71,0x96,0x04,0x8C,0x5A,0x3C,0xE7,0x39,0xF7,0xAD,0x6E,0xF5,0x2A,0xD7,0x2A,0x85,0xE0,0xB9,0x26,0x3E,0xF1,0xF9,0x7F};
const uint8_t spH[]             PROGMEM = {0x65,0x18,0x6D,0x90,0x2D,0xD6,0xEC,0xF6,0x56,0xB7,0xBC,0xC5,0xAE,0xC7,0x30,0xA3,0x01,0x6D,0x2D,0xCE,0x8B,0x3D,0xDC,0xD6,0x3C,0x61,0x76,0xC5,0x25,0x9B,0x08,0xE5,0x2E,0x22,0x1B,0x00,0x80,0x01,0x2B,0x87,0x38,0x60,0xE5,0xED,0x08,0x58,0xC0,0x02,0x16,0xB0,0x80,0x06,0x34,0x40,0x80,0x76,0xD3,0xFE,0x1F};
const uint8_t spI[]             PROGMEM = {0xAA,0x8D,0x63,0xA8,0xAA,0x66,0xAD,0xB9,0xA8,0xCB,0x08,0xDD,0x7C,0xFB,0x5B,0xDF,0xFA,0x36,0xB7,0x39,0x6D,0xB5,0xA3,0x15,0xBA,0xF8,0x76,0xBB,0xDF,0xD3,0x9E,0xD7,0xDA,0x5C,0x49,0xA5,0x2D,0xDE,0x7B,0xDB,0x6B,0x76,0x29,0xAF,0xC7,0x6D,0xEF,0x31,0xD8,0x5C,0x1E,0xF7,0xBD,0x1E,0xF5,0x48,0xE7,0x28,0x89,0xE2,0xF2,0x38,0x5F,0xF9,0xFE,0x7F};
const uint8_t spL[]             PROGMEM = {0x6B,0x68,0x2E,0xD8,0x2A,0x37,0xDF,0xFE,0xF6,0xA7,0xAF,0x21,0xBC,0xC4,0x17,0xDF,0xFE,0xF6,0x67,0xC8,0x6A,0xC3,0x4D,0x3A,0xDF,0x61,0x4D,0x95,0x6C,0xA6,0x71,0x9E,0xB1,0x36,0x98,0x53,0x49,0x5E,0xFB,0x5A,0x8E,0x0A,0x7A,0x43,0xD9,0x4F,0x3C,0xC2,0x59,0xE0,0xF4,0x08,0xF9,0x09,0x67,0x03,0x31,0x19,0xA2,0x25,0x9E,0xFF,0x0F};
const uint8_t spJ[]             PROGMEM = {0x6E,0x5A,0xC1,0x99,0x54,0xB2,0x09,0x60,0x49,0x22,0x07,0xEC,0xA8,0x16,0x80,0x5D,0x26,0xC7,0xD0,0xA3,0x92,0x78,0x74,0x3E,0x55,0x2F,0x21,0x6A,0xB1,0xFA,0x56,0xB7,0xBA,0xD5,0xAD,0x6F,0x7D,0xBB,0x3D,0x8E,0x75,0xB4,0x22,0x36,0x7F,0x53,0xCF,0x7E,0xB5,0x67,0x96,0x61,0x34,0xDB,0x52,0x9F,0xF4,0x8E,0xDC,0x88,0xE1,0x5F,0xF2,0x9D,0xEF,0xFF,0x07};
const uint8_t spK[]             PROGMEM = {0x01,0x18,0x91,0xB9,0x00,0x4D,0x91,0x46,0x60,0x65,0x2D,0xB3,0xB8,0x67,0xED,0x53,0xF4,0x14,0x64,0x11,0x4B,0x6E,0x79,0x8B,0x5B,0xDE,0xF2,0x74,0xC3,0x05,0x6A,0xE7,0xEA,0x3D,0xEC,0x71,0x2F,0x6D,0x1F,0xB1,0x00,0x2B,0xDF,0xF4,0xA3,0x1D,0xB3,0x24,0x60,0xD4,0xE2,0x7A,0xE5,0x2B,0xDF,0xE9,0x1E,0x43,0x48,0xA3,0xEB,0xE4,0xFB,0xFF,0x01};
const uint8_t spM[]             PROGMEM = {0xA9,0xE8,0xC5,0xD8,0x73,0x16,0xCF,0xE2,0x0E,0xB7,0xBB,0xCD,0xA9,0xBB,0x6F,0xF1,0xF0,0xD5,0xB7,0xBE,0xCD,0xEE,0xC6,0x50,0x63,0x72,0x98,0x58,0xEE,0x73,0x5F,0xDB,0xD6,0x62,0x72,0x98,0x58,0xAE,0x7B,0xDD,0xD3,0x5E,0x45,0x72,0x93,0xD8,0x8D,0x87,0x3D,0xEC,0x61,0xCF,0x70,0x96,0x58,0xE1,0xA2,0x4D,0xE2,0x15,0xEF,0xFF,0x07};
const uint8_t spN[]             PROGMEM = {0x41,0xEE,0xD1,0xC8,0xB3,0x16,0xEF,0xEE,0xD4,0xC3,0x35,0x59,0xC4,0xE3,0x5B,0xDD,0xEA,0x56,0xBB,0x59,0xED,0x92,0xCD,0x91,0xB4,0x78,0x4F,0x63,0x19,0x9E,0x38,0x2C,0x9C,0xCE,0xA5,0xAF,0xF5,0x08,0xC7,0xB0,0xC2,0x61,0x1E,0x35,0x1E,0xF1,0x8C,0x57,0xBC,0xD3,0xDD,0x4D,0x49,0xB8,0xCE,0x0E,0xF7,0x34,0xAD,0x16,0xBC,0xF9,0xFF,0x01};
const uint8_t spO[]             PROGMEM = {0xA3,0x6D,0xB4,0xBA,0x8D,0xBC,0xAD,0xA6,0x92,0xEC,0x0E,0xF2,0xB6,0xAB,0x5D,0x8C,0xA2,0xE0,0xEE,0x16,0xF6,0x3F,0xCB,0x39,0xCC,0xB1,0xAC,0x91,0xE5,0x0C,0x8B,0xBF,0xB0,0x3B,0xD3,0x1D,0x28,0x59,0xE2,0xE9,0x4F,0x7B,0xF9,0xE7,0xFF,0x01};
const uint8_t spP[]             PROGMEM = {0x02,0x88,0x26,0xD4,0x00,0x6D,0x96,0xB5,0xB8,0x25,0x05,0x89,0x6C,0x3D,0xD2,0xE6,0x51,0xB3,0xA6,0xF4,0x48,0x67,0x09,0xA0,0x8C,0xC7,0x33,0x9B,0x79,0xCB,0x67,0x0E,0x80,0xCA,0xD7,0xBD,0x6A,0xD5,0x72,0x06,0xB4,0xB5,0xBA,0xB7,0xBD,0xAF,0x73,0x5D,0xF3,0x91,0x8F,0x78,0xFE,0x3F};
const uint8_t spQ[]             PROGMEM = {0x0E,0x98,0xD5,0x28,0x02,0x11,0x18,0xE9,0xCC,0x46,0x98,0xF1,0x66,0xA7,0x27,0x1D,0x21,0x99,0x92,0xB6,0xDC,0x7C,0x17,0xAB,0x2C,0xD2,0x2D,0x13,0x3B,0xEF,0xAA,0x75,0xCE,0x94,0x47,0xD0,0xEE,0x3A,0xC4,0x29,0x2F,0x61,0x35,0x31,0xA2,0x50,0xB6,0xF8,0xCD,0x1F,0xFF,0x0F};
const uint8_t spR[]             PROGMEM = {0xAB,0xC8,0x72,0x33,0x93,0xBB,0xDC,0xEE,0xB6,0xB7,0xB9,0xF5,0x68,0x53,0x5C,0xA9,0xA6,0x4D,0xB3,0x6B,0x73,0x0A,0xCB,0x71,0xD8,0xBB,0xAF,0x7D,0x2F,0x47,0xB6,0xC7,0xF4,0x94,0x37,0x9D,0xA9,0x34,0xF8,0x53,0x97,0x78,0xFD,0x3F};
const uint8_t spS[]             PROGMEM = {0x6B,0x6E,0xD9,0x34,0x6C,0xE6,0xDC,0xF6,0x36,0xB7,0xBE,0xF5,0x19,0xAA,0x0F,0x2D,0xDA,0x25,0x7B,0x19,0x5B,0x4D,0x9A,0xA2,0xE7,0xB8,0x1D,0x23,0xA5,0x26,0x71,0x2A,0x03,0xFC,0x94,0xE6,0x01,0x0F,0x68,0x40,0x03,0x12,0xE0,0x00,0x07,0x30,0xF0,0xFF};
//const uint8_t spT[]             PROGMEM = {0x01,0xD8,0xB6,0xDD,0x01,0x2F,0xF4,0x38,0x60,0xD5,0xD1,0x91,0x4D,0x97,0x84,0xE6,0x4B,0x4E,0x36,0xB2,0x10,0x67,0xCD,0x19,0xD9,0x2C,0x01,0x94,0xF1,0x78,0x66,0x33,0xEB,0x79,0xAF,0x7B,0x57,0x87,0x36,0xAF,0x52,0x08,0x9E,0x6B,0xEA,0x5A,0xB7,0x7A,0x94,0x73,0x45,0x47,0xAC,0x5A,0x9C,0xAF,0xFF,0x07};
const uint8_t spU[]             PROGMEM = {0xA1,0x9F,0x9C,0x94,0x72,0x26,0x8D,0x76,0x07,0x55,0x90,0x78,0x3C,0xEB,0x59,0x9D,0xA2,0x87,0x60,0x76,0xDA,0x72,0x8B,0x53,0x36,0xA5,0x64,0x2D,0x7B,0x6E,0xB5,0xFA,0x24,0xDC,0x32,0xB1,0x73,0x1F,0xFA,0x1C,0x16,0xAB,0xC6,0xCA,0xE0,0xB5,0xDF,0xCD,0xA1,0xD4,0x78,0x1B,0xB6,0x53,0x97,0x74,0xA7,0x21,0xBC,0xE4,0xFF,0x01};
const uint8_t spV[]             PROGMEM = {0x66,0xF3,0xD2,0x38,0x43,0xB3,0xD8,0x2D,0xAC,0x4D,0xBB,0x70,0xB0,0xDB,0xB0,0x0E,0x17,0x2C,0x26,0xAE,0xD3,0x32,0x6C,0xBB,0x32,0xAB,0x19,0x63,0xF7,0x21,0x6C,0x9C,0xE5,0xD4,0x33,0xB6,0x80,0xCB,0x9A,0x9B,0xAF,0x6C,0xE5,0x42,0x70,0x7F,0xB3,0xB3,0x9D,0xEE,0x7C,0x55,0x2B,0x26,0x40,0xD5,0xE2,0xD9,0xF6,0xB1,0x4F,0x75,0xAB,0x7B,0x3D,0xCA,0x35,0x4B,0x13,0x98,0xAF,0xA9,0x57,0x7E,0xF3,0x97,0xBE,0x19,0x0B,0x31,0xF3,0xCD,0xFF,0x03};
const uint8_t spW[]             PROGMEM = {0xA1,0xDE,0xC2,0x44,0xC2,0xFC,0x9C,0x6A,0x88,0x70,0x09,0x59,0x7B,0x8A,0xCA,0x3B,0x3D,0xA4,0xCF,0xCD,0x56,0x96,0xC4,0xA6,0xBB,0xF4,0x6E,0x59,0xE2,0x9D,0xEA,0xE2,0x4A,0xD5,0x12,0x65,0xBB,0xB3,0xEB,0x51,0x57,0x12,0x99,0xC1,0xD9,0x6E,0xB7,0xC7,0x31,0x35,0x92,0x6A,0xC9,0x9B,0xC7,0x34,0x4C,0x12,0x46,0x6C,0x99,0x73,0x5F,0xDA,0xD2,0x92,0x92,0x64,0x6C,0xEE,0x6B,0xD9,0x6A,0x22,0x71,0x8F,0xCF,0xE5,0x2C,0x41,0xD4,0xDD,0x36,0xA5,0x3B,0x19,0xF5,0x0C,0xEE,0x13,0xEF,0xFC,0x9A,0xD7,0x85,0xC8,0x62,0xEE,0x6D,0xBF,0xFF,0x07};
const uint8_t spX[]             PROGMEM = {0xAD,0x68,0xC9,0xC5,0x32,0x56,0xDF,0xFA,0x54,0x2D,0x35,0x7B,0xF8,0xEA,0x5B,0xDD,0xE6,0x4C,0x6D,0x04,0xA6,0xC5,0xEA,0xB9,0x84,0xB5,0x75,0x23,0x37,0x4F,0x83,0x40,0x11,0xCA,0x5D,0x44,0x36,0x00,0x28,0xA0,0xE6,0x31,0x0F,0x68,0xC0,0x00,0xBF,0x8D,0x79,0xC0,0x03,0x16,0xD0,0x00,0x07,0xFE,0x1F};
const uint8_t spY[]             PROGMEM = {0x6A,0xB1,0xA2,0xA7,0x95,0xD2,0xD8,0x25,0x0F,0xA3,0x2D,0xB2,0x7A,0x1C,0xB3,0xDE,0xE6,0xD4,0x45,0x6D,0x56,0xCA,0x9A,0x5B,0xDF,0xFA,0xB6,0xBB,0xDB,0xFD,0x1A,0x8A,0x6F,0x2B,0xF3,0x37,0x7B,0x19,0x4B,0xD3,0x25,0x39,0xFA,0xB9,0x6F,0x6D,0xEB,0x31,0xC4,0x5C,0x1E,0xF7,0xAD,0x1F,0xE5,0x1C,0xA5,0x48,0x5C,0x1E,0xD7,0x2B,0x5F,0xF9,0xFA,0x7F};


/* Say any number between -999,999 and 999,999 */
void sayNumber(long n) {
  if (n<0) {
    voice.say(spMINUS);
    sayNumber(-n);
  } else if (n==0) {
    voice.say(spZERO);
  } else {
    if (n>=1000) {
      int thousands = n / 1000;
      sayNumber(thousands);
      voice.say(spTHOUSAND);
      n %= 1000;
      if ((n > 0) && (n<100)) voice.say(spAND);
    }
    if (n>=100) {
      int hundreds = n / 100;
      sayNumber(hundreds);
      voice.say(spHUNDRED);
      n %= 100;
      if (n > 0) voice.say(spAND);
    }
    if (n>19) {
      int tens = n / 10;
      switch (tens) {
        case 2: voice.say(spTWENTY); break;
        case 3: voice.say(spTHIR_); voice.say(spT); break;
        case 4: voice.say(spFOUR); voice.say(spT);  break;
        case 5: voice.say(spFIF_);  voice.say(spT); break;
        case 6: voice.say(spSIX);  voice.say(spT); break;
        case 7: voice.say(spSEVEN);  voice.say(spT); break;
        case 8: voice.say(spEIGHT);  voice.say(spT); break;
        case 9: voice.say(spNINE);  voice.say(spT); break;
      }
      n %= 10;
    }
    switch(n) {
      case 1: voice.say(spONE); break;
      case 2: voice.say(spTWO); break;
      case 3: voice.say(spTHREE); break;
      case 4: voice.say(spFOUR); break;
      case 5: voice.say(spFIVE); break;
      case 6: voice.say(spSIX); break;
      case 7: voice.say(spSEVEN); break;
      case 8: voice.say(spEIGHT); break;
      case 9: voice.say(spNINE); break;
      case 10: voice.say(spTEN); break;
      case 11: voice.say(spELEVEN); break;
      case 12: voice.say(spTWELVE); break;
      case 13: voice.say(spTHIR_); voice.say(sp_TEEN); break;
      case 14: voice.say(spFOUR); voice.say(sp_TEEN);break;
      case 15: voice.say(spFIF_); voice.say(sp_TEEN); break;
      case 16: voice.say(spSIX); voice.say(sp_TEEN); break;
      case 17: voice.say(spSEVEN); voice.say(sp_TEEN); break;
      case 18: voice.say(spEIGHT); voice.say(sp_TEEN); break;
      case 19: voice.say(spNINE); voice.say(sp_TEEN); break;
    }
  }
}

//----------- MQ2 Code added here
#define         LEDpin                       (5)
#define         motorpin1                    (7)
#define         motorpin2                    (8)
#define         BUZpin                       (9)
#define         Power                        (A3)
/************************Hardware Related Macros************************************/
#define         MQ_PIN                       (1) 
#define         RL_VALUE                     (5)     //define the load resistance on the board, in kilo ohms
#define         RO_CLEAN_AIR_FACTOR          (9.83)  //RO_CLEAR_AIR_FACTOR=(Sensor resistance in clean air)/RO,
                                                     //which is derived from the chart in datasheet
 
/***********************Software Related Macros************************************/
#define         CALIBARAION_SAMPLE_TIMES     (50)    //define how many samples you are going to take in the calibration phase
#define         CALIBRATION_SAMPLE_INTERVAL  (500)   //define the time interal(in milisecond) between each samples in the
                                                     //cablibration phase
#define         READ_SAMPLE_INTERVAL         (50)    //define how many samples you are going to take in normal operation
#define         READ_SAMPLE_TIMES            (5)     //define the time interal(in milisecond) between each samples in 
                                                     //normal operation
 
/**********************Application Related Macros**********************************/
#define         GAS_LPG                      (0)
#define         GAS_CO                       (1)
#define         GAS_SMOKE                    (2)
 
/*****************************Globals***********************************************/
float           LPGCurve[3]  =  {2.3,0.21,-0.47};   //two points are taken from the curve. 
                                                    //with these two points, a line is formed which is "approximately equivalent"
                                                    //to the original curve. 
                                                    //data format:{ x, y, slope}; point1: (lg200, 0.21), point2: (lg10000, -0.59) 
float           COCurve[3]  =  {2.3,0.72,-0.34};    //two points are taken from the curve. 
                                                    //with these two points, a line is formed which is "approximately equivalent" 
                                                    //to the original curve.
                                                    //data format:{ x, y, slope}; point1: (lg200, 0.72), point2: (lg10000,  0.15) 
float           SmokeCurve[3] ={2.3,0.53,-0.44};    //two points are taken from the curve. 
                                                    //with these two points, a line is formed which is "approximately equivalent" 
                                                    //to the original curve.
                                                    //data format:{ x, y, slope}; point1: (lg200, 0.53), point2: (lg10000,  -0.22)                                                     
float           Ro           =  10;                 //Ro is initialized to 10 kilo ohms




void setup() {
  Serial.begin(9600);
 
  voice.say(spSTART);//say start to indicate we actually started :)
  voice.say(spSTART);  //repeat because I'm slow
  voice.say(spSTART);  //Repeat and smack user for not listening the first 2 times
  voice.say(spCALIBRATE);
  
  //Add a warmup sequence here to allow the sensor to warm
  //Use a for loop to force several minutes of warming time
  //Use the below line every couple seconds to tell the user the unit is still calibrating
  //voice.say(spCALIBRATE);
  //Repeat for at least a couple mins
  //Implement this code later after testing because having it wait every time on disconnect of power would be super annoying!
  
  //Serial.print("Calibrating...\n");                
 Ro = MQCalibration(MQ_PIN);                       //Calibrating the sensor. Please make sure the sensor is in clean air 
                                                    //when you perform the calibration                    
  //Serial.print("Calibration is done...\n"); 
  //Serial.print("Ro=");h3
  //Serial.print(Ro);
  //Serial.print("kohm");
  //Serial.print("\n");
  voice.say(spREADY);  //Yep
  voice.say(spREADY);  //Hear it now?
  voice.say(spREADY);  //Just in case you missed the first two! c
  digitalWrite(LEDpin , HIGH);
  
  
}
void loop() {

  digitalWrite(Power , HIGH);
  digitalWrite(LEDpin ,HIGH);
  
  //Serial.print("LPG:"); 
  voice.say(spL);  //say the constituent of gas
  voice.say(spP);
  voice.say(spG);
  delay(200);
  
   
   
 forward();


   
   unsigned int lpg = (MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_LPG) );  //Se below for craziness and reading the gas value
   if (lpg !=0) voice.say(spALERT);  // If not zero say alert- easy right? :)
   sayNumber (lpg);

   delay(2000);

   
   //sayNumber(MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_LPG) );//say the read value
   //Serial.print(MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_LPG) );

   
   //Serial.print (lpg);
   //Serial.print( "ppm" );
   //Serial.print("    ");   
   //Serial.print("CO:"); 
  voice.say(spC);  //say the constituent of gas
  delay(200);
  voice.say(spO);  
  delay(200);
  
  unsigned int co = (MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_CO) );
   if (co !=0) voice.say(spALERT);  // If not zero say alert- easy right? :)
   sayNumber (co);
   
   delay(2000);

   
  
  //sayNumber(MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_CO) );
   //Serial.print(MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_CO) );
   //Serial.print (co);
   //Serial.print( "ppm" );
   //Serial.print("    ");   
   
   //Serial.print("SMOKE:"); 
   voice.say(spSMOKE);   //say the constituent of gas
   delay(200);

   
   unsigned int smoke = (MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_SMOKE) );
   if (smoke !=0) voice.say(spALERT);  // If not zero say alert- easy right? :)
   sayNumber (smoke);

   delay(2000);

   
  
   //sayNumber(MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_SMOKE) );
   //Serial.print(MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_SMOKE) );
   //Serial.print (smoke);
   //Serial.print( "ppm" );
   //Serial.print("\n");
  voice.say(spBREAK);

  
  if(lpg>0 || co>0 || smoke>0)
   { tone(BUZpin, 1000);}
  else
   { noTone(BUZpin); }
}  
 



void forward()
{
  digitalWrite(motorpin1, HIGH);
  digitalWrite(motorpin2, LOW);
  delay(2000);
  digitalWrite(motorpin1, LOW);
  digitalWrite(motorpin2, LOW);
}
/****************** MQResistanceCalculation ****************************************
Input:   raw_adc - raw value read from adc, which represents the voltage
Output:  the calculated sensor resistance
Remarks: The sensor and the load resistor forms a voltage divider. Given the voltage
         across the load resistor and its resistance, the resistance of the sensor
         could be derived.
************************************************************************************/ 
float MQResistanceCalculation(int raw_adc)
{
  return ( ((float)RL_VALUE*(1023-raw_adc)/raw_adc));
}
 
/***************************** MQCalibration ****************************************
Input:   mq_pin - analog channel
Output:  Ro of the sensor
Remarks: This function assumes that the sensor is in clean air. It use  
         MQResistanceCalculation to calculates the sensor resistance in clean air 
         and then divides it with RO_CLEAN_AIR_FACTOR. RO_CLEAN_AIR_FACTOR is about 
         10, which differs slightly between different sensors.
************************************************************************************/ 
float MQCalibration(int mq_pin)
{
  int i;
  float val=0;
 
  for (i=0;i<CALIBARAION_SAMPLE_TIMES;i++) {            //take multiple samples
    val += MQResistanceCalculation(analogRead(mq_pin));
    delay(CALIBRATION_SAMPLE_INTERVAL);
  }
  val = val/CALIBARAION_SAMPLE_TIMES;                   //calculate the average value
 
  val = val/RO_CLEAN_AIR_FACTOR;                        //divided by RO_CLEAN_AIR_FACTOR yields the Ro 
                                                        //according to the chart in the datasheet 
 
  return val; 
}
/*****************************  MQRead *********************************************
Input:   mq_pin - analog channel
Output:  Rs of the sensor
Remarks: This function use MQResistanceCalculation to caculate the sensor resistenc (Rs).
         The Rs changes as the sensor is in the different consentration of the target
         gas. The sample times and the time interval between samples could be configured
         by changing the definition of the macros.
************************************************************************************/ 
float MQRead(int mq_pin)
{
  int i;
  float rs=0;
 
  for (i=0;i<READ_SAMPLE_TIMES;i++) {
    rs += MQResistanceCalculation(analogRead(mq_pin));
    delay(READ_SAMPLE_INTERVAL);
  }
 
  rs = rs/READ_SAMPLE_TIMES;
 
  return rs;  
}
 
/*****************************  MQGetGasPercentage **********************************
Input:   rs_ro_ratio - Rs divided by Ro
         gas_id      - target gas type
Output:  ppm of the target gas
Remarks: This function passes different curves to the MQGetPercentage function which 
         calculates the ppm (parts per million) of the target gas.
************************************************************************************/ 
int MQGetGasPercentage(float rs_ro_ratio, int gas_id)
{
  if ( gas_id == GAS_LPG ) {
     return MQGetPercentage(rs_ro_ratio,LPGCurve);
  } else if ( gas_id == GAS_CO ) {
     return MQGetPercentage(rs_ro_ratio,COCurve);
  } else if ( gas_id == GAS_SMOKE ) {
     return MQGetPercentage(rs_ro_ratio,SmokeCurve);
  }    
 
  return 0;
}
 
/*****************************  MQGetPercentage **********************************
Input:   rs_ro_ratio - Rs divided by Ro
         pcurve      - pointer to the curve of the target gas
Output:  ppm of the target gas
Remarks: By using the slope and a point of the line. The x(logarithmic value of ppm) 
         of the line could be derived if y(rs_ro_ratio) is provided. As it is a 
         logarithmic coordinate, power of 10 is used to convert the result to non-logarithmic 
         value.
************************************************************************************/ 
int  MQGetPercentage(float rs_ro_ratio, float *pcurve)
{
  return (pow(10,( ((log(rs_ro_ratio)-pcurve[1])/pcurve[2]) + pcurve[0])));
}