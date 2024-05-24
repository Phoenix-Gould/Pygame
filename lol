import pygame
import time

pygame.init()

white = (255,255,255)
black = (0,0,0)
red = (255,0,0)
green = (0,155,0)

display_width = 800
display_height = 600

gameDisplay = pygame.display.set_mode((display_width,display_height))
pygame.display.set_caption('My Slither.IO Game!')


 clock= pygame.time.Clock()

 block_size = 10
 FPS = 30

 font = pygame.font.SysFont(None, 25)

def snake(block_size, snakelist):
 for XnY in snakeList:
 pygame.draw.rect(gameDisplay, green, [XnY[0],XnY[1],lead_x,lead_y,block_size,block_size])

def message_to_screen(msg,color)
  screen_text = font.render(msg, True, color)
  gameDisplay.blit(screen_text, [display_width/2, display_height/2])

def gameLoop:
    gameExit = False
    gameOver = False

 lead_x = display_width/2
 lead_y = display_height/2
 
 lead_x_change = 0
 lead_y_change = 0

 snakeList = []
 snakeLegnth = 1

 randAppleX = round(random.randrange(0, display_width-block_size)/10.0)*10.0
 randAppleY = round(random.randrange(0, display_height-block_size)/10.0)*10.0

while not gameExit:

  while gameOver == True:
    gameDisplay.fill(White)
    message_to_screen("Game over, press C to continue or Q to quit.")
    pygame.display.update()

  for event in pygame.event.get():
    if event.type == pygame.KEYDOWN:
      if event.key == pygame.K_q:
        gameExit = True
        gameOver = False
      if event.key == pygame.K_c: 
        gameLoop()

   for event in pygame.event.get():
     if event.type == pygame.QUIT:
       gameExit = True
     if event.type == pygame.KEYDOWN:
       if event.key == pygame.K_LEFT:
         lead_x_change = -block_size
         lead_y_change = 0
       elif event.key == pygame.K_RIGHT:
         lead_x_change = block_size
         lead_y_change = 0

    
       elif event.key == pygame.K_UP:
         lead_y_change = -block_size
         lead_x_change = 0
       elif event.key == pygame.K_DOWN:
         lead_y_change = block_size
         lead_x_change = 0

if display_width >= 800 or lead_x < 0 or display_height >= 600 or lead_y < 0:
gameOver = True

if event.type ==pygame.KEYUP:
  if event.key == pygame.K_LEFT or event.key == pygame.K_RIGHT:

lead_x += lead_x_change
lead_y += lead_y_change
gameDisplay.fill(white)

AppleThickness = 30
pygame.draw.rect(gameDisplay, red, [randAppleX, randAppleY, AppleThickness, AppleThickness])

snakeHead = []
snakeHead.append(lead_x)
snakeHead.append(lead_y)
snakeList.append(snakeHead)

if len(snakeList) > snakeLegnth:
 del snakeList[0]

for eachSegment in snakeList[:-1]:
 if eachSegment == snakeHead:
  gameOver = True

snakeList[:-1]

snake(block_size, snakeList)

pygame.display.update()


if lead_x == randAppleX and lead_y == randAppleY:
 randAppleX = round(random.randrange(0, display_width-block_size)/10.0)*10.0
 randAppleY = round(random.randrange(0, display_height-block_size)/10.0)*10.0
 snakeLength += 1
gameDisplay.fill(red, rect=[200,200,50,50])

if lead_x >= randAppleX and lead_x <= randAppleX + AppleThickness:
 if lead_y >= randAppleY and lead_y <= randAppleY + AppleThickness
 randAppleX = round(random.randrange(0, display_width-block_size)/10.0)*10.0
 randAppleY = round(random.randrange(0, display_height-block_size)/10.0)*10.0
 snakeLength += 1

clock.tick(FPS)

message_to_screen("You Lose", red)
pygame.display.update()
time.sleep(2)
pygame.quit()
quit()

gameLoop()
