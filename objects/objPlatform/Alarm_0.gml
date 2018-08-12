/// @description Spawn target
// You can write your code in this editor

if (objGameInfo.gameType == GAMETYPE_TARGET) {
  scrSpawnTarget(self.id);
} else if (objGameInfo.gameType == GAMETYPE_HORSE && objGameInfo.turn == 2) {
  scrSpawnTargetAtLocation(self.id, objGameInfo.pAdjX, objGameInfo.pAdjY);      
}