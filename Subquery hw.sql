SELECT TOP 1 [Price], [Name], Publisher
FROM Books_En
WHERE [Publisher] = 'BHV St. Petersburg'
ORDER BY [Price] DESC




SELECT [Price],[Name], [Publisher]
FROM Books_En AS Books
WHERE [Publisher] = 'BHV St. Petersburg'
    AND [Price] = (
        SELECT MAX([Price])
        FROM Books_En
        WHERE [Publisher] = 'BHV St. Petersburg'
		)


