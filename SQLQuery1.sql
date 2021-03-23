CREATE TABLE [dbo].[UserOperationClaims] (
    [Id]               INT IDENTITY (1, 1) NOT NULL,
    [UserId]           INT NOT NULL,
    [OperationClaimId] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
	FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]),
    FOREIGN KEY ([OperationClaimId]) REFERENCES [dbo].[OperationClaims] ([Id])
);