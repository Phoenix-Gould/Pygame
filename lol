import pygame

pygame.init()

gameDisplay = pygame.display.set_mode((800,600))
pygame.display.set_caption('My Slither.IO Game!')

pygame.display.update()

gameExit = False

while not gameExit:
  for event in pygame.event.get():
  if event.type == pygame.quit:
  print(event)

pygame.quit()

