#!/bin/bash

# export KUBECONFIG=/home/utm/.kube/config
# chmod ugo+x miscfiles/kuberdeploy/r77-deploy/0_kuberdeploy_delete_all_sleep_apply_all_svcapp.sh
# miscfiles/kuberdeploy/r77-deploy/0_kuberdeploy_delete_all_sleep_apply_all_svcapp.sh

# delete ---------------------------------------------------------------------------------------------------------------

# other
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/svcapp-kafka.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ticket-send.json

# Квитанция о выдаче акцизных марок.
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-checks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-nototherreceipts.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-checksunlocal.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-checkrange.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-invoiceissueam-checkrange-response.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-checkrange-import.json

# Квитанция о вывозе АМ за пределы РФ
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceexportam-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceexportam-checks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceexportam-checkidentifiers.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-invoiceexportam-checkidentifiers-response.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceexportam-checkidentifiers-import.json

# Квитанция о планируемом ввозе АП
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-checks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-numbermarks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-checksunlocal.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-checkexp.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-invoiceplannedimport-checkexp-response.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-checkexp-import.json

# Направление заявления на изготовление марок в АО «Гознак».
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-manufacturerfsm-create.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-confirm.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestmanufacturefsm-create.json

# Обработка заявления о выдаче марок
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/reportusingfsm-create.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/reportusingfsm-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/reportusingfsm-load.json

# Отправка накладной на отгрузку марок
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-ttnshipmentfsm-load.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-import.json

# Проверка по внутренним информационным ресурсам
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checklocal-demand.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checklocal-license.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checklocal-marks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checklocal-norar.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/reportusingfsm-checks.json

# Проверки, проводимые в рамках СМЭВ
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/checksmevfines-load.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/checksmevpayments-load.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/checksmevtaxes-load.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevfines.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevfines-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevpayments.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevpayments-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevtaxes.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevtaxes-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/reportusingfsm-smevchecks.json

# Проверки, проводимые после получения марок в  МРУ
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-checks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-instocks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-limit5000kfk.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-power.json

# Проверки СМЭВ после изготовления марок
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-advancepayment-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-statedutygisgmp-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-understating-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-ttnshipmentfsm-advancepayment-load.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-ttnshipmentfsm-statedutygisgmp-load.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-ttnshipmentfsm-understating-load.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-advancepayment.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-smevchecks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-statedutygisgmp.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-understating.json

# Отчет об уничтожении АМ/ФСМ
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-checks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-checksunlocal.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-numbermarks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-checkexp.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-reportdestructionamfsm-check-exp-response.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-checkexp-import.json

# Запросы на отмену
# Запрос на отмену квитанции о выдачи АМ
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-checks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-checkprevdoc.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-checksunlocal.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-resetbalance.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-requestrepealiam-resetbalance-response.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-resetbalance-import.json

# Запрос на отмену квитанции о вывозе АМ за пределы РФ
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-checks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-checkprevdoc.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-checksunlocal.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-noimport.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-requestrepealeam-noimport-response.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-noimport-import.json

# Запрос на отмену квитанции о планируемом ввозе АП
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-checks.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-checkprevdoc.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-checksunlocal.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-noimport.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-requestrepealipi-noimport-response.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-noimport-import.json

# Отправка накладной на выдачу марок
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-ttnshipmentfsm-confirm.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/ttnissuefsm-create.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/rejectionnoticefsm-create.json

# Отказ в выдаче марок
# kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/rejectionnoticefsm-import.json # не используется
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/returnnoticefsm-import.json
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/rechecknotifications-import.json

# Доработка функционала серверной обработки
kubectl --insecure-skip-tls-verify delete -f miscfiles/kuberdeploy/r77-deploy/notificationsbeginnigturnover-import.json

# sleep ----------------------------------------------------------------------------------------------------------------
sleep 5

# apply ---------------------------------------------------------------------------------------------------------------

# other
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/svcapp-kafka.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ticket-send.json

# Квитанция о выдаче акцизных марок.
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-checks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-nototherreceipts.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-checksunlocal.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-checkrange.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-invoiceissueam-checkrange-response.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceissueam-checkrange-import.json

# Квитанция о вывозе АМ за пределы РФ
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceexportam-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceexportam-checks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceexportam-checkidentifiers.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-invoiceexportam-checkidentifiers-response.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceexportam-checkidentifiers-import.json

# Квитанция о планируемом ввозе АП
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-checks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-numbermarks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-checksunlocal.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-checkexp.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-invoiceplannedimport-checkexp-response.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/invoiceplannedimport-checkexp-import.json

# Направление заявления на изготовление марок в АО «Гознак».
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-manufacturerfsm-create.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-confirm.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestmanufacturefsm-create.json

# Обработка заявления о выдаче марок
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/reportusingfsm-create.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/reportusingfsm-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/reportusingfsm-load.json

# Отправка накладной на отгрузку марок
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-ttnshipmentfsm-load.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-import.json

# Проверка по внутренним информационным ресурсам
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checklocal-demand.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checklocal-license.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checklocal-marks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checklocal-norar.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/reportusingfsm-checks.json

# Проверки, проводимые в рамках СМЭВ
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/checksmevfines-load.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/checksmevpayments-load.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/checksmevtaxes-load.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevfines.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevfines-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevpayments.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevpayments-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevtaxes.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/claimissuefsm-checksmevtaxes-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/reportusingfsm-smevchecks.json

# Проверки, проводимые после получения марок в  МРУ
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-checks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-instocks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-limit5000kfk.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-power.json

# Проверки СМЭВ после изготовления марок
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-advancepayment-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-statedutygisgmp-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-understating-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-ttnshipmentfsm-advancepayment-load.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-ttnshipmentfsm-statedutygisgmp-load.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-ttnshipmentfsm-understating-load.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-advancepayment.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-smevchecks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-statedutygisgmp.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnshipmentfsm-understating.json

# Отчет об уничтожении АМ/ФСМ
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-checks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-checksunlocal.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-numbermarks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-checkexp.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-reportdestructionamfsm-check-exp-response.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/reportdestructionamfsm-checkexp-import.json

# Запросы на отмену
# Запрос на отмену квитанции о выдачи АМ
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-checks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-checkprevdoc.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-checksunlocal.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-resetbalance.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-requestrepealiam-resetbalance-response.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealiam-resetbalance-import.json

# Запрос на отмену квитанции о вывозе АМ за пределы РФ
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-checks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-checkprevdoc.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-checksunlocal.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-noimport.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-requestrepealeam-noimport-response.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealeam-noimport-import.json

# Запрос на отмену квитанции о планируемом ввозе АП
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-checks.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-checkprevdoc.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-checksunlocal.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-noimport.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-requestrepealipi-noimport-response.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/requestrepealipi-noimport-import.json

# Отправка накладной на выдачу марок
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/kafka-listener-ttnshipmentfsm-confirm.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/ttnissuefsm-create.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/rejectionnoticefsm-create.json

# Отказ в выдаче марок
# kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/rejectionnoticefsm-import.json # не используется
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/returnnoticefsm-import.json
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/rechecknotifications-import.json

# Доработка функционала серверной обработки
kubectl --insecure-skip-tls-verify apply -f miscfiles/kuberdeploy/r77-deploy/notificationsbeginnigturnover-import.json
