CREATE TABLE IF NOT EXISTS `${TABLE_NAME}` (`account_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `account_id_string` TEXT NOT NULL, `type` TEXT, `subtype` TEXT, `name` TEXT, `mask` TEXT, `officialName` TEXT, `item_id` INTEGER NOT NULL, FOREIGN KEY(`item_id`) REFERENCES `items`(`item_id`) ON UPDATE NO ACTION ON DELETE CASCADE );
CREATE INDEX IF NOT EXISTS `index_accounts_account_id` ON `${TABLE_NAME}` (`account_id`);
CREATE INDEX IF NOT EXISTS `index_accounts_account_id` ON `${TABLE_NAME}` (`account_id`);
CREATE TABLE IF NOT EXISTS `${TABLE_NAME}` (`item_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `error` TEXT, `institutionId` TEXT, `item_id_string` TEXT NOT NULL, `user_id` INTEGER NOT NULL, FOREIGN KEY(`user_id`) REFERENCES `users`(`user_id`) ON UPDATE NO ACTION ON DELETE CASCADE );
CREATE INDEX IF NOT EXISTS `index_items_item_id` ON `${TABLE_NAME}` (`item_id`);
CREATE TABLE IF NOT EXISTS `${TABLE_NAME}` (`transaction_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `account_id` INTEGER NOT NULL, `account_id_string` TEXT NOT NULL, `accountOwner` TEXT, `amount` INTEGER, `category_id` TEXT, `date` INTEGER, `isoCurrencyCode` TEXT, `name` TEXT, `pending` INTEGER NOT NULL, `pendingTransactionId` TEXT, `transactionId` TEXT, `transactionType` TEXT, `unofficialCurrencyCode` TEXT, FOREIGN KEY(`account_id`) REFERENCES `accounts`(`account_id`) ON UPDATE NO ACTION ON DELETE CASCADE );
CREATE INDEX IF NOT EXISTS `index_transactions_transaction_id` ON `${TABLE_NAME}` (`transaction_id`);
CREATE TABLE IF NOT EXISTS `${TABLE_NAME}` (`user_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `userName` TEXT NOT NULL, `password` TEXT NOT NULL, `email` TEXT);
CREATE INDEX IF NOT EXISTS `index_users_user_id` ON `${TABLE_NAME}` (`user_id`);
CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT);
INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'feeeb018f1c6d29af78678d9dd28f692');
