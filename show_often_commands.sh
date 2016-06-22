#!/bin/sh
echo 
echo "fix payorder>>>>>"
echo "/opt/php/bin/php v2/api/index.php  pay/fix/fix/fixPayOrderByRedoNotify?debug=web\&inner_num="
echo
echo "fix payorder by transaction info>>>>>"
echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/fixPayOrderByBillInfo?debug=web\&inner_num="
echo 
echo "find cobar node>>>>>"
echo "/opt/php/bin/php v2/api/index.php pay/fix/Temporary/testFindDataNode"
echo
echo 
echo "redoSubscribeKuaidi>>>>>"
echo "/opt/php/bin/php v2/api/index.php pay/fix/Temporary/redoSubscribeKuaidi?debug=web\&order_no="
echo 'python /data/users/laoli/shell/batch_exec_by_file.py  --file=test.txt --exec="/opt/php/bin/php /data/users/laoli/iron/v2/api/index.php pay/fix/Temporary/redoSubscribeKuaidi?debug=web\&order_no=%s"'
echo 
echo "test code>>>>>"
echo "/opt/php/bin/php v2/api/index.php pay/fix/TmpUnitTest/test"
echo 
echo "pay dispatcher doTask>>>>>"
echo "/opt/php/bin/php v2/api/index.php pay/daemon/callback/dispatcher/doTask" 
echo
echo 
echo "fix bill except scripts>>>>>>"
echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/fixPayBillExceptData"
echo
echo 
echo "batchDownBill"
echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/batchDownBill wxpay,wxpay_bigunsign,wxapppay,umpay" 
echo
echo "checkPayNotifyExcept"
echo "/opt/php/bin/php v2/api/index.php pay/AsyncPayNotify/checkPayNotifyExcept"
echo 
echo
echo
echo "findWxBillInfoByTransactionId" 
echo "/opt/php/bin/php v2/api/index.php pay/Fix/Temporary/findWxBillInfoByTransactionId"
echo "/opt/php/bin/php v2/api/index.php pay/Fix/Temporary/findWxSelfBillByTransactionId"
echo
echo
echo
echo "getPayProcessTimes"
echo "/opt/php/bin/php v2/api/index.php pay/Fix/Fix/getPayProcessTimes?debug=web\&inner_transaction_number="
echo
echo
echo "delDelayJob"
echo "/opt/php/bin/php v2/api/index.php pay/fix/Temporary/delSingleDelayJob?debug=web\&key="
echo
echo 
echo
echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/getRechargePayOrder?debug=web\&re_num="
echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/getPayNotifyByInnerNum?debug=web\&inner_num="
echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/getPayNotifyLogByOrderNo?debug=web\&order_no="
echo 
echo 
#echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/paySwitchByItemName?debug=web\&item_name=wxpay_show"
#echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/paySwitchByItemName?debug=web\&item_name=yzpay_show"
#echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/paySwitchByItemName?debug=web\&item_name=baiduwap_show"
#echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/paySwitchByItemName?debug=web\&item_name=aliwap_show"
echo 
echo "/opt/php/bin/php v2/api/index.php pay/fix/TmpUnitTest/getPayMethodSwitch"
echo 
echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/paySwitchByItemName?debug=web\&item_name=pay_notify_safe_code_check"
echo 
echo "/opt/php/bin/php v2/api/index.php pay/fix/TmpUnitTest/getPayNotifySafeCodeCheck"
echo
echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/delWxPayInfo?debug=web\&kdt_id="
echo
echo "/opt/php/bin/php v2/api/index.php pay/fix/Fix/updateWxpayAppid?debug=web\&kdt_id=\&appid="
echo
echo "/opt/php/bin/php v2/api/index.php pay/fix/TmpUnitTest/getKdtIdTeamStatus?debug=web\&kdt_id="
