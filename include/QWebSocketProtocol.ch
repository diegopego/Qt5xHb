/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QWebSocketProtocol::Version
*/
#define QWebSocketProtocol_VersionUnknown                            -1
#define QWebSocketProtocol_Version0                                  0
#define QWebSocketProtocol_Version4                                  4
#define QWebSocketProtocol_Version5                                  5
#define QWebSocketProtocol_Version6                                  6
#define QWebSocketProtocol_Version7                                  7
#define QWebSocketProtocol_Version8                                  8
#define QWebSocketProtocol_Version13                                 13
#define QWebSocketProtocol_VersionLatest                             QWebSocketProtocol_Version13

/*
enum QWebSocketProtocol::CloseCode
*/
#define QWebSocketProtocol_CloseCodeNormal                           1000
#define QWebSocketProtocol_CloseCodeGoingAway                        1001
#define QWebSocketProtocol_CloseCodeProtocolError                    1002
#define QWebSocketProtocol_CloseCodeDatatypeNotSupported             1003
#define QWebSocketProtocol_CloseCodeReserved1004                     1004
#define QWebSocketProtocol_CloseCodeMissingStatusCode                1005
#define QWebSocketProtocol_CloseCodeAbnormalDisconnection            1006
#define QWebSocketProtocol_CloseCodeWrongDatatype                    1007
#define QWebSocketProtocol_CloseCodePolicyViolated                   1008
#define QWebSocketProtocol_CloseCodeTooMuchData                      1009
#define QWebSocketProtocol_CloseCodeMissingExtension                 1010
#define QWebSocketProtocol_CloseCodeBadOperation                     1011
#define QWebSocketProtocol_CloseCodeTlsHandshakeFailed               1015