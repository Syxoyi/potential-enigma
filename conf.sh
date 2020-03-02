#!/bin/bash

CURL=true
# ============= локальный bark
HOST=localhost
PORT=8070
# ============= удаленный bark (например для чеков)
IP="10.0.50.107"
PORTkaf=9092
# ============= topics
Topic_in="maksim-in2"
Topic_out="resp-new2"
k=""
# ============= удаленный bark (например для новых доков)
IP2="10.0.50.107"
PORTkaf2=9092
# ============= topics
Topic_in2="maksim-in"
Topic_out2="resp-new"
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Norm()
{
ucr=$(echo "${1}" | cut -d'.' -f2-)
case "$ucr" in
# --------------------------------------------------------
#ERROR
#---_IIAM_---_IIAM_---_IIAM_---_IIAM_---
/IIAM/1/2_IIAM.xml)StateCheck1 '<ErrText>sql2 ШК'
;;
/IIAM/2/1_IIAMnorm.xml)StateCheck1 '<ErrText>0d0 В документе отсутствуют ШК'
;;
/IIAM/5/1_IIAMnorm.xml)StateCheck1 '<ErrText>Internal error (Exception_detail: Text'
;;
#---_IEAM_---_IEAM_---_IEAM_---_IEAM_---
/IEAM/0/1_IEAM.xml)StateCheck1 '<ErrText>0b0 ШК'
;;
/IEAM/1_2/2_IEAM.xml)StateCheck1 '<ErrText>Internal error (Exception_detail: Text'
;;
/IEAM/2/2_IEAM.xml)StateCheck1 '<ErrText>0b4 Инверсия даты:'
;;
/IEAM/3/2_IEAM.xml)StateCheck1 '<ErrText>0b2 Некорректный владелец'
;;
/IEAM/6/1_IIAMnorm.xml)StateCheck1 '<ErrText>0d0 В документе отсутствуют ШК'
;;
/IEAM/7_1/2_IEAM.xml)StateCheck1 '<ErrText>0b3 Для ШК 6:31 документ не разрешен' #!!!
;;
/IEAM/7_2/3_IEAM.xml)StateCheck1 '<ErrText>0b3 Для ШК 31:31 документ не разрешен' #!!!
;;
/IEAM/7_3/2.xml)echo "$ans"
;;
/IEAM/7_3/5_IEAM.xml)StateCheck1 '<ErrText>0b0 ШК'
;;
/IEAM/9/2_IEAM.xml)StateCheck1 '<ErrText>0b4 Инверсия даты:'
;;
/IEAM/9/3_IEAM.xml)StateCheck1 '<ErrText>0b4 Инверсия даты:'
;;
/IEAM/10/3_IEAM.xml)StateCheck1 '<ErrText>0b2 Некорректный владелец'
;;
/IEAM/13/1_IIAMnorm.xml)StateCheck1 '<ErrText>0d0 В документе отсутствуют ШК'
;;
/IEAM/13/2_IIAMnorm.xml)StateCheck1 '<ErrText>0d0 В документе отсутствуют ШК'
;;
/IEAM/14/4_IEAM.xml)StateCheck1 '<ErrText>0b3 Для ШК 33:31 документ не разрешен'
;;
/IEAM/15/2.xml)echo "$ans"
;;
/IEAM/15/6_IEAM.xml)StateCheck1 '<ErrText>0b0 ШК'
;;
#---_IPI_---_IPI_---_IPI_---_IPI_---
/IPI/0/1_IPI.xml) StateCheck1 '<ErrText>0b0 ШК'
;;
/IPI/1_2/3_IPI.xml) StateCheck1 '<ErrText>Internal error (Exception_detail: Text'
;;
/IPI/2/3_IPI.xml) StateCheck1 '<ErrText>0b4 Инверсия даты:'
;;
/IPI/3/3_IPI.xml) StateCheck1 '<ErrText>0b2 Некорректный владелец'
;;
/IPI/6/1_IIAMnorm.xml) StateCheck1 '<ErrText>0d0 В документе отсутствуют ШК'
;;
/IPI/7/5_IPI.xml)StateCheck1 '<ErrText>0b3 Для ШК 33:33 документ не разрешен'
;;
/IPI/8/6_IPI.xml)StateCheck1 '<ErrText>0b0 ШК '
;;
/IPI/8/2.xml) echo "$ans"
;;
/IPI/9/1_IPI.xml) StateCheck1 '<ErrText>0b3 Для ШК 6:33 документ не разрешен'
;;
/IPI/12/2_IPI.xml)StateCheck1 '<ErrText>0b0 ШК '
;;
/IPI/13/4_IPI.xml)StateCheck1 '<ErrText>0b4 Инверсия даты'
;;
/IPI/14/4_IPI.xml)StateCheck1 '<ErrText>0b2 Некорректный владелец'
;;
/IPI/17/1_IIAMnorm.xml)StateCheck1 '<ErrText>0d0 В документе отсутствуют ШК'
;;
/IPI/18/6_IPI.xml)StateCheck1 '<ErrText>0b3 Для ШК 33:33 документ не разрешен'
;;
/IPI/19/7_IPI.xml)StateCheck1 '<ErrText>0b0 ШК'
;;
/IPI/19/2.xml) echo "$ans"
;;
/chainsDoc_OldRR/5/8_RR.xml)StateCheck1 '<ErrText>0h6 Некорректный получатель:null документа</ErrText>'
;;
#---_CheqV3_---_CheqV3_---_CheqV3_---_CheqV3_---
# /CheqV3/1/3.xml)echo -e "CheqOnline: $ucr"
#;;
mess)echo -en "${NDpath:1} "; KafkaErr
;;
/CheqV3/1/4.xml)echo -e "CheqOnline: $ucr"
;;
/CheqV3/2/4.xml)echo -e "CheqOnline: $ucr"
;;
/CheqV3/3/4.xml)echo -e "CheqOnline: $ucr"
;;
#---NewInKafk---NewInKafk---NewInKafk---NewInKafk---
FRAILE)echo -e "${NDpath:1}  KafkaAnswer: $ans"
;;

# --------------------------------------------------------
# QueryRestBCode

# --------------------------------------------------------
# Other
*) StateCheck0
;;
esac 
}
