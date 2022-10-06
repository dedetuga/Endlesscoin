// Copyright (c) 2011-2014 The EndessCoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef ENDLESSCOIN_QT_ENDLESSCOINADDRESSVALIDATOR_H
#define ENDLESSCOIN_QT_ENDLESSCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class EndessCoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit EndessCoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** EndessCoin address widget validator, checks for a valid endlesscoin address.
 */
class EndessCoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit EndessCoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // ENDLESSCOIN_QT_ENDLESSCOINADDRESSVALIDATOR_H
