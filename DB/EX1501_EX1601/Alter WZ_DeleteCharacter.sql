/****** Object:  StoredProcedure [dbo].[WZ_DeleteCharacter]    Script Date: 18/03/2021 22:39:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [dbo].[WZ_DeleteCharacter] 
@Account varchar(10),
@Name varchar(10)
AS
BEGIN

SET NOCOUNT ON
SET	XACT_ABORT ON

DECLARE @Result tinyint

SET @Result = 0

If NOT EXISTS ( SELECT  Name  FROM  Character WHERE Name = @Name )
	begin
		SET @Result	= 0
	end
else
	begin
		SET @Result = 1
		DELETE FROM Character WHERE AccountID = @Account AND Name= @Name
		DELETE FROM OptionData WHERE Name = @Name
		DELETE FROM T_CGuid WHERE Name = @Name
		DELETE FROM T_FriendList WHERE FriendName = @Name
		DELETE FROM T_FriendMail WHERE FriendName = @Name
		DELETE FROM T_FriendMain WHERE Name = @Name
		DELETE FROM T_WaitFriend WHERE FriendName = @Name
		DELETE FROM QuestKillCount WHERE Name = @Name
		DELETE FROM MasterSkillTree WHERE Name = @Name
		DELETE FROM EventLeoTheHelper WHERE Name = @Name
		DELETE FROM EventSantaClaus WHERE Name = @Name
		DELETE FROM QuestWorld WHERE Name = @Name
		DELETE FROM Gens_Left WHERE Name = @Name
		DELETE FROM Gens_Rank WHERE Name = @Name
		DELETE FROM Gens_Reward WHERE Name = @Name
		DELETE FROM RankingDuel WHERE Name = @Name
		DELETE FROM RankingBloodCastle WHERE Name = @Name
		DELETE FROM RankingCastleSiege WHERE Name = @Name
		DELETE FROM RankingChaosCastle WHERE Name = @Name
		DELETE FROM RankingDevilSquare WHERE Name = @Name
		DELETE FROM RankingIllusionTemple WHERE Name = @Name
		DELETE FROM HelperData WHERE Name = @Name
		DELETE FROM EventInventory WHERE Name = @Name
		DELETE FROM MuunInventory WHERE Name = @Name
		DELETE FROM PentagramJewel WHERE Name = @Name AND Type = 0
		DELETE FROM ItemBuyBack WHERE Name = @Name
		DELETE FROM GremoryCaseLocal WHERE Name = @Name
		DELETE FROM ChatBlockData WHERE Name = @Name
		DELETE FROM HuntingLog WHERE Name = @Name
		DELETE FROM EventEntryCount WHERE Name = @Name
		DELETE FROM LabyrinthInfo WHERE Name = @Name
		DELETE FROM LabyrinthMissionInfo WHERE Name = @Name
		DELETE FROM FavoriteMoveList WHERE Name = @Name
		DELETE FROM QuestGuide WHERE Name = @Name
		DELETE FROM MasterSkillTreeExt WHERE Name = @Name
		DELETE FROM PShopInventory WHERE Name = @Name
		DELETE FROM GremoryCasePShop WHERE Name = @Name
	end

SELECT @Result

SET NOCOUNT OFF
SET	XACT_ABORT OFF

END



GO

