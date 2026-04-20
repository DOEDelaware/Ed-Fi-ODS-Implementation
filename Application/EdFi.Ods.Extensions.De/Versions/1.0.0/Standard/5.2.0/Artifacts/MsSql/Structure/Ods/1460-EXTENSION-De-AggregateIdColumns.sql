CREATE SEQUENCE [de].[StudentHealthAlert_AggSeq] START WITH -2147483648 INCREMENT BY 1;
ALTER TABLE [de].[StudentHealthAlert] ADD AggregateId int NOT NULL DEFAULT NEXT VALUE FOR [de].[StudentHealthAlert_AggSeq], AggregateData varbinary(8000);
CREATE INDEX [IX_StudentHealthAlert_AggregateId] ON [de].[StudentHealthAlert] (AggregateId);

