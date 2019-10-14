.class final Lcom/android/server/am/Pageboost$DaemonConnector;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DaemonConnector"
.end annotation


# instance fields
.field private sOutputStream:Ljava/io/OutputStream;

.field private sSocket:Landroid/net/LocalSocket;

.field private sSocketName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$DaemonConnector;->openSocket()Z

    return-void
.end method

.method private openSocket()Z
    .registers 5

    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sOutputStream:Ljava/io/OutputStream;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_21

    nop

    const/4 v0, 0x1

    return v0

    :catch_21
    move-exception v0

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "socket open failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public writeDaemon(Ljava/nio/ByteBuffer;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/am/Pageboost$DaemonConnector;->openSocket()Z

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_3f

    :try_start_b
    iget-object v0, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception v0

    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing to socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_35
    iget-object v1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_3b

    goto :goto_3c

    :catch_3b
    move-exception v1

    :goto_3c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/Pageboost$DaemonConnector;->sSocket:Landroid/net/LocalSocket;

    :cond_3f
    return-void
.end method
