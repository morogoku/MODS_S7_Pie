.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;
.super Ljava/lang/Object;
.source "NTLMAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;


# static fields
.field private static final HEADER_PROXY_AUTHENTICATE:Ljava/lang/String; = "Proxy-Authenticate:"

.field private static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: NTLM "

.field private static final TAG:Ljava/lang/String; = "NTLMAuthenticator"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    const-string v2, "Proxy-Authorization: NTLM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_e

    const-string v2, ""

    return-object v2

    :cond_e
    const/16 v2, 0xd

    if-eq v1, v2, :cond_16

    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_16
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_20

    if-gez v1, :cond_e

    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getNTLMType3String(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-eqz v1, :cond_6e

    if-nez v2, :cond_c

    goto :goto_6e

    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->sendType1Message(Ljava/io/OutputStream;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;

    move-result-object v4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->receiveType2Message(Ljava/net/Socket;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;

    move-result-object v5

    if-eqz v5, :cond_6b

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x10000

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->isFlagSet(I)Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-virtual {v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getTargetName()Ljava/lang/String;

    move-result-object v3

    :cond_28
    invoke-virtual {v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->getFlags()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlags()I

    move-result v8

    and-int v6, v7, v8

    const-string v7, ":"

    move-object/from16 v15, p1

    invoke-virtual {v15, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    new-instance v16, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;

    invoke-virtual {v5}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getServerChallengeNonce()[B

    move-result-object v8

    array-length v7, v14

    if-lez v7, :cond_48

    const/4 v7, 0x0

    aget-object v7, v14, v7

    :goto_46
    move-object v10, v7

    goto :goto_4b

    :cond_48
    const-string v7, ""

    goto :goto_46

    :goto_4b
    array-length v7, v14

    if-lez v7, :cond_53

    const/4 v7, 0x1

    aget-object v7, v14, v7

    :goto_51
    move-object v11, v7

    goto :goto_56

    :cond_53
    const-string v7, ""

    goto :goto_51

    :goto_56
    const-string/jumbo v13, "localhost"

    const/16 v17, 0x1

    move-object/from16 v7, v16

    move v9, v6

    move-object v12, v3

    move-object/from16 v18, v14

    move/from16 v14, v17

    invoke-direct/range {v7 .. v14}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;-><init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType3Message;->createMessageString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_6b
    move-object/from16 v15, p1

    return-object v3

    :cond_6e
    :goto_6e
    move-object/from16 v15, p1

    return-object v3
.end method

.method private getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    const-string v2, "Proxy-Authenticate:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :goto_1f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2a

    goto :goto_1f

    :cond_2a
    return-object v0
.end method

.method private processResponseFromeServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "Proxy-Authenticate:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v3, "NTLM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_26

    :cond_1e
    array-length v1, v0

    const/4 v3, 0x2

    if-le v1, v3, :cond_25

    aget-object v2, v0, v3

    nop

    :cond_25
    return-object v2

    :cond_26
    :goto_26
    return-object v2
.end method

.method private receiveType2Message(Ljava/net/Socket;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2f

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    array-length v3, v2

    if-lez v3, :cond_2f

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "407"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getNTLMTypeMessageFromResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    const/4 v2, 0x0

    if-eqz v0, :cond_38

    new-instance v3, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;

    invoke-direct {v3, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :cond_38
    return-object v2
.end method

.method private sendType1Message(Ljava/io/OutputStream;[Ljava/lang/String;)Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;

    invoke-direct {v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;-><init>()V

    invoke-static {p2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Proxy-Authorization: NTLM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType1Message;->createMessageString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-object v0
.end method


# virtual methods
.method public buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getCredentialKeyValue(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v2

    :catch_13
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "NTLM"

    return-object v0
.end method

.method public isCredentialRequired()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I
    .registers 15

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    :try_start_7
    new-instance v2, Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_c7

    nop

    const/4 v3, 0x0

    :try_start_16
    invoke-static {p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In verifyProxyAuthCredentials: processedHeaderCred = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "NTLMAuthenticator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In verifyProxyAuthCredentials. Full header = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_63} :catch_b6
    .catchall {:try_start_16 .. :try_end_63} :catchall_b4

    move v7, v0

    move-object v0, v3

    :cond_65
    :try_start_65
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMAuthenticator;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    const-string v8, "NTLMAuthenticator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Line froms server "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_89

    nop

    :goto_87
    move v0, v7

    goto :goto_a9

    :cond_89
    const-string v8, "HTTP/1."

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a2

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const-string v10, "407"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v9

    move v7, v8

    :cond_a2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_a6} :catch_b0
    .catchall {:try_start_65 .. :try_end_a6} :catchall_ad

    if-gtz v8, :cond_65

    goto :goto_87

    :goto_a9
    :try_start_a9
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_c7

    goto :goto_d1

    :catchall_ad
    move-exception v4

    move v0, v7

    goto :goto_b8

    :catch_b0
    move-exception v0

    move-object v3, v0

    move v0, v7

    goto :goto_b7

    :catchall_b4
    move-exception v4

    goto :goto_b8

    :catch_b6
    move-exception v3

    :goto_b7
    :try_start_b7
    throw v3
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b4

    :goto_b8
    if-eqz v3, :cond_c3

    :try_start_ba
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_bd} :catch_be
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_c7

    goto :goto_c6

    :catch_be
    move-exception v5

    :try_start_bf
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c6

    :cond_c3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    :goto_c6
    throw v4
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c7} :catch_c7

    :catch_c7
    move-exception v2

    const-string v3, "NTLMAuthenticator"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d1
    if-eqz v0, :cond_d5

    const/4 v2, 0x0

    goto :goto_d6

    :cond_d5
    const/4 v2, -0x1

    :goto_d6
    return v2
.end method
