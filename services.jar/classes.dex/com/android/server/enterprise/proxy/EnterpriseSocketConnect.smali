.class public Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;
.super Ljava/lang/Thread;
.source "EnterpriseSocketConnect.java"


# static fields
.field private static final CONNECT:Ljava/lang/String; = "CONNECT "

.field private static final CONTENT_LENGTH_HEADER_PREFIX:Ljava/lang/String; = "Content-Length: "

.field private static final DELETE:Ljava/lang/String; = "DELETE "

.field public static final EMPTY_CONTENT_LENGTH:I = -0x1

.field private static final GET:Ljava/lang/String; = "GET "

.field private static final HEAD:Ljava/lang/String; = "HEAD "

.field private static final OPTIONS:Ljava/lang/String; = "OPTIONS "

.field private static final PATCH:Ljava/lang/String; = "PATCH "

.field private static final POST:Ljava/lang/String; = "POST "

.field private static final PUT:Ljava/lang/String; = "PUT "

.field private static final TAG:Ljava/lang/String; = "EnterpriseSocketConnect"

.field private static final TRACE:Ljava/lang/String; = "TRACE "


# instance fields
.field private authHeader:Ljava/lang/String;

.field private from:Ljava/io/InputStream;

.field private to:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/net/Socket;Ljava/net/Socket;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->start()V

    return-void
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    .registers 6

    if-eqz p2, :cond_b

    const-string v0, "Proxy-Authorization: Basic "

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p2, 0x0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;

    invoke-direct {v1, p1, p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;-><init>(Ljava/net/Socket;Ljava/net/Socket;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_20

    :try_start_15
    invoke-virtual {v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->join()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_20

    goto :goto_1a

    :catch_19
    move-exception v2

    :goto_1a
    :try_start_1a
    invoke-virtual {v1}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->join()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_20

    goto :goto_1f

    :catch_1e
    move-exception v2

    :goto_1f
    goto :goto_24

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_24
    return-void
.end method

.method private static getContentLength(Ljava/lang/String;)I
    .registers 5

    const-string v0, "Content-Length: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :try_start_8
    const-string v0, "Content-Length: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_19} :catch_32
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v0

    const-string v1, "EnterpriseSocketConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArrayIndexOutOfBoundsException to extract content length from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :catch_32
    move-exception v0

    const-string v1, "EnterpriseSocketConnect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException to extract content length from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_4a
    :goto_4a
    const/4 v0, -0x1

    return v0
.end method

.method private isLineARequest(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "GET "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "POST "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "HEAD "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "PUT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "DELETE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "TRACE "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "OPTIONS "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "CONNECT "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "PATCH "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private performCommunication()V
    .registers 6

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_18

    nop

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_3a

    :cond_18
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1e} :catch_1f

    goto :goto_4

    :catch_1f
    move-exception v1

    const-string v2, "EnterpriseSocketConnect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException while performing communication "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method private performCommunicationWithHeader(Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x1

    if-eqz v3, :cond_11

    :try_start_7
    iget-object v5, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-static {v5, v4, v2}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;ZI)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_18

    :catch_f
    move-exception v4

    goto :goto_5b

    :cond_11
    iget-object v5, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-static {v5, v4}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->getLine(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    :goto_18
    const/4 v3, 0x0

    if-nez v1, :cond_27

    nop

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->from:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_76

    :cond_27
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f

    const/4 v3, 0x1

    goto :goto_55

    :cond_2f
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->isLineARequest(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    const/4 v2, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_55

    :cond_4d
    const/4 v4, -0x1

    if-ne v2, v4, :cond_55

    invoke-static {v1}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->getContentLength(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    :cond_55
    :goto_55
    iget-object v4, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->to:Ljava/io/OutputStream;

    invoke-static {v4, v1}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->sendLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_5a} :catch_f

    goto :goto_4

    :goto_5b
    nop

    const-string v5, "EnterpriseSocketConnect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while performing communication with header "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_76
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->authHeader:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->performCommunicationWithHeader(Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/EnterpriseSocketConnect;->performCommunication()V

    :goto_d
    return-void
.end method
