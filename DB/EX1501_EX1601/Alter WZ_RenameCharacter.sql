/****** Object:  StoredProcedure [dbo].[WZ_RenameCharacter]    Script Date: 18/03/2021 22:42:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




ALTER Procedure [dbo].[WZ_RenameCharacter] 
@Account varchar(10),
@OldName varchar(10),
@NewName varchar(10)
AS
BEGIN

SET NOCOUNT ON
SET	XACT_ABORT ON

DECLARE @Result tinyint

SET @Result = 1

If EXISTS ( SELECT  Name  FROM  Character WHERE Name = @NewName )
	begin
		SET @Result	= 1
	end
else
	begin
		SET @Result = 0		
		UPDATE Character SET Name = @NewName WHERE Name = @OldName AND AccountID = @Account
		UPDATE AccountCharacter SET GameID1 = @NewName WHERE GameID1 = @OldName AND Id = @Account
		UPDATE AccountCharacter SET GameID2 = @NewName WHERE GameID2 = @OldName AND Id = @Account
		UPDATE AccountCharacter SET GameID3 = @NewName WHERE GameID3 = @OldName AND Id = @Account
		UPDATE AccountCharacter SET GameID4 = @NewName WHERE GameID4 = @OldName AND Id = @Account
		UPDATE AccountCharacter SET GameID5 = @NewName WHERE GameID5 = @OldName AND Id = @Account
		UPDATE AccountCharacter SET GameID6 = @NewName WHERE GameID6 = @OldName AND Id = @Account
		UPDATE AccountCharacter SET GameID7 = @NewName WHERE GameID7 = @OldName AND Id = @Account
		UPDATE AccountCharacter SET GameID8 = @NewName WHERE GameID8 = @OldName AND Id = @Account
		UPDATE AccountCharacter SET GameID9 = @NewName WHERE GameID9 = @OldName AND Id = @Account
		UPDATE AccountCharacter SET GameID10 = @NewName WHERE GameID10 = @OldName AND Id = @Account
		UPDATE AccountCharacter SET GameIDC = @NewName WHERE GameIDC = @OldName AND Id = @Account
		UPDATE Guild SET G_Master = @NewName WHERE G_Master = @OldName
		UPDATE GuildMember SET Name = @NewName WHERE Name = @OldName
		UPDATE OptionData SET Name = @NewName WHERE Name = @OldName
		UPDATE T_CGuid SET Name = @NewName WHERE Name = @OldName
		UPDATE T_FriendList SET FriendName = @NewName WHERE FriendName = @OldName
		UPDATE T_FriendMail SET FriendName = @NewName WHERE FriendName = @OldName
		UPDATE T_FriendMain SET Name = @NewName WHERE Name = @OldName
		UPDATE T_WaitFriend SET FriendName = @NewName WHERE FriendName = @OldName
		UPDATE QuestKillCount SET Name = @NewName WHERE Name = @OldName
		UPDATE MasterSkillTree SET Name = @NewName WHERE Name = @OldName
		UPDATE EventLeoTheHelper SET Name = @NewName WHERE Name = @OldName
		UPDATE EventSantaClaus SET Name = @NewName WHERE Name = @OldName
		UPDATE QuestWorld SET Name = @NewName WHERE Name = @OldName
		UPDATE Gens_Left SET Name = @NewName WHERE Name = @OldName
		UPDATE Gens_Rank SET Name = @NewName WHERE Name = @OldName
		UPDATE Gens_Reward SET Name = @NewName WHERE Name = @OldName
		UPDATE RankingDuel SET Name = @NewName WHERE Name = @OldName
		UPDATE RankingBloodCastle SET Name = @NewName WHERE Name = @OldName
		UPDATE RankingCastleSiege SET Name = @NewName WHERE Name = @OldName
		UPDATE RankingChaosCastle SET Name = @NewName WHERE Name = @OldName
		UPDATE RankingDevilSquare SET Name = @NewName WHERE Name = @OldName
		UPDATE RankingIllusionTemple SET Name = @NewName WHERE Name = @OldName
		UPDATE HelperData SET Name = @NewName WHERE Name = @OldName
		UPDATE EventInventory SET Name = @NewName WHERE Name = @OldName
		UPDATE MuunInventory SET Name = @NewName WHERE Name = @OldName
		UPDATE PentagramJewel SET Name = @NewName WHERE Name = @OldName AND Type = 0
		UPDATE ItemBuyBack SET Name = @NewName WHERE Name = @OldName
		UPDATE GremoryCaseLocal SET Name = @NewName WHERE Name = @OldName
		UPDATE ChatBlockData SET Name = @NewName WHERE Name = @OldName
		UPDATE HuntingLog SET Name = @NewName WHERE Name = @OldName
		UPDATE EventEntryCount SET Name = @NewName WHERE Name = @OldName
		UPDATE LabyrinthInfo SET Name = @NewName WHERE Name = @OldName
		UPDATE LabyrinthMissionInfo SET Name = @NewName WHERE Name = @OldName
		UPDATE FavoriteMoveList SET Name = @NewName WHERE Name = @OldName
		UPDATE QuestGuide SET Name = @NewName WHERE Name = @OldName
		UPDATE MasterSkillTreeExt SET Name = @NewName WHERE Name = @OldName
		UPDATE PShopInventory SET Name = @NewName WHERE Name = @OldName
		UPDATE GremoryCasePShop SET Name = @NewName WHERE Name = @OldName
	end

SELECT @Result

SET NOCOUNT OFF
SET	XACT_ABORT OFF

END



GO

