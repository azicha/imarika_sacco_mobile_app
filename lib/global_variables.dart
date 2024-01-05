import 'package:flutter/material.dart';
import 'package:imarika_sacco_mobile_app/deposit_page.dart';
import 'package:imarika_sacco_mobile_app/enquiries_page.dart';
import 'package:imarika_sacco_mobile_app/send_money_page.dart';
import 'package:imarika_sacco_mobile_app/statements_page.dart';
import 'package:imarika_sacco_mobile_app/transfer_cash_page.dart';
import 'package:imarika_sacco_mobile_app/withdraw_page.dart';

final mainServices = [
  {
    'id': 0,
    'serviceName': 'Send Money',
    'serviceIcon': Icons.send_to_mobile_outlined,
    'page': const SendMoneyPage()
  },
  {
    'id': 1,
    'serviceName': 'Deposit',
    'serviceIcon': Icons.atm,
    'page': const DepositPage()
  },
  {
    'id': 2,
    'serviceName': 'Transfer Cash',
    'serviceIcon': Icons.payments,
    'page': const TransferCashPage()
  },
];

final otherServices = [
  {
    'id': 0,
    'serviceName': 'Statement',
    'serviceIcon': Icons.money,
    'page': const StatementsPage()
  },
  {
    'id': 2,
    'serviceName': 'Withdraw',
    'serviceIcon': Icons.money,
    'page': const WithdrawPage()
  },
  {
    'id': 1,
    'serviceName': 'Enquiries',
    'serviceIcon': Icons.money,
    'page': const EnquiriesPage()
  },
];

final enquiries = [
  {
    'id': 0,
    'question': '',
    'answer': '',
  },
  {
    'id': 1,
    'question': 'How to borrow a loan',
    'answer': '',
  },
  {
    'id': 2,
    'question': '',
    'answer': '',
  },
  {
    'id': 3,
    'question': '',
    'answer': '',
  },
  {
    'id': 4,
    'question': '',
    'answer': '',
  },
  {
    'id': 5,
    'question': '',
    'answer': '',
  },
  {
    'id': 6,
    'question': '',
    'answer': '',
  },
  {
    'id': 7,
    'question': '',
    'answer': '',
  },
  {
    'id': 8,
    'question': '',
    'answer': '',
  },
  {
    'id': 9,
    'question': '',
    'answer': '',
  },
  {
    'id': 10,
    'question': '',
    'answer': '',
  },
];
