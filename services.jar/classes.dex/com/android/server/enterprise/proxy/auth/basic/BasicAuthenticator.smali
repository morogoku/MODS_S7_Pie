.class public Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;
.super Ljava/lang/Object;
.source "BasicAuthenticator.java"

# interfaces
.implements Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;


# static fields
.field public static final PROXY_AUTHENTICATION_HEADER_PREFIX:Ljava/lang/String; = "Proxy-Authorization: Basic "

.field private static final TAG:Ljava/lang/String; = "BasicAuthenticator"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy-Authorization: Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "Basic"

    return-object v0
.end method

.method public isCredentialRequired()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I
    .registers 14

    const/4 v0, -0x1

    invoke-static {p3}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->buildHeadRequest([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v2}, Lcom/android/server/enterprise/proxy/auth/basic/BasicAuthenticator;->buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    :try_start_18
    new-instance v4, Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_25
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_25} :catch_a4
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_25} :catch_9f

    nop

    :try_start_26
    const-string v5, "BasicAuthenticator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BasicAuthenticator::verifyAuthenticationCredentials writing to proxy:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    :cond_4b
    invoke-static {v5}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "HTTP/1."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_82

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string v8, "407"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    const/4 v7, -0x1

    goto :goto_6b

    :cond_6a
    const/4 v7, 0x0

    :goto_6b
    move v0, v7

    const-string v7, "BasicAuthenticator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BasicAuthenticator::verifyAuthenticationCredentials retStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_86} :catch_8e
    .catchall {:try_start_26 .. :try_end_86} :catchall_8c

    if-gtz v7, :cond_4b

    :try_start_88
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_8b
    .catch Ljava/net/UnknownHostException; {:try_start_88 .. :try_end_8b} :catch_a4
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_9f

    goto :goto_a8

    :catchall_8c
    move-exception v5

    goto :goto_90

    :catch_8e
    move-exception v2

    :try_start_8f
    throw v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8c

    :goto_90
    if-eqz v2, :cond_9b

    :try_start_92
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_95} :catch_96
    .catch Ljava/net/UnknownHostException; {:try_start_92 .. :try_end_95} :catch_a4
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_9f

    goto :goto_9e

    :catch_96
    move-exception v6

    :try_start_97
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9e

    :cond_9b
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    :goto_9e
    throw v5
    :try_end_9f
    .catch Ljava/net/UnknownHostException; {:try_start_97 .. :try_end_9f} :catch_a4
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9f} :catch_9f

    :catch_9f
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a9

    :catch_a4
    move-exception v2

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_a8
    nop

    :goto_a9
    return v0
.end method
