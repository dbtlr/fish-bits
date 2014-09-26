function dumpequityslave
	echo -n "Generating dump for slave equity database"
	ssh -i ~/.config/ssh/rtp_staging root@107.22.241.64 "mysqldump -u root equity --extended-insert=FALSE --ignore-table=equity.system_log  --ignore-table=equity.sent_emails  --ignore-table=equity.email_subscription_audit_entries  --ignore-table=equity.investor_match_emails  --ignore-table=equity.investor_match_email_interested_diy_ventures  --ignore-table=equity.investor_match_email_diy_ventures > ~/equity_dump_slave.sql;  mysqldump -u root --no-data equity system_log sent_emails investor_match_emails investor_match_email_interested_diy_ventures investor_match_email_diy_ventures email_subscription_audit_entries >> ~/equity_dump_slave.sql; rm -f ~/equity_dump_slave.sql.gz; gzip ~/equity_dump_slave.sql"

	echo -n "Downloading database dump"
	scp -i ~/.config/ssh/rtp_staging root@107.22.241.64:~/equity_dump_slave.sql.gz .

	echo -n "Completed"
end