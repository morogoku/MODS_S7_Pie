.class final Lcom/android/server/am/Pageboost$PageboostdProxy;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostdProxy"
.end annotation


# static fields
.field public static final PAGEBOOST_HALT:I = 0x2

.field public static final PAGEBOOST_MEMRECLAIM:I = 0x3

.field public static final PAGEBOOST_PREFETCH:I = 0x1

.field private static conn:Lcom/android/server/am/Pageboost$DaemonConnector; = null

.field private static final socketName:Ljava/lang/String; = "pageboostd"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitPageboostdProxy()V
    .registers 2

    new-instance v0, Lcom/android/server/am/Pageboost$DaemonConnector;

    const-string/jumbo v1, "pageboostd"

    invoke-direct {v0, v1}, Lcom/android/server/am/Pageboost$DaemonConnector;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    return-void
.end method

.method public static executeCmd(ILjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p0, v1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {v1, v0}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    goto :goto_4b

    :cond_24
    const/4 v1, 0x2

    if-ne p0, v1, :cond_35

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {v1, v0}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    goto :goto_4b

    :cond_35
    const/4 v1, 0x3

    if-ne p0, v1, :cond_4b

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/android/server/am/Pageboost$PageboostdProxy;->conn:Lcom/android/server/am/Pageboost$DaemonConnector;

    invoke-virtual {v1, v0}, Lcom/android/server/am/Pageboost$DaemonConnector;->writeDaemon(Ljava/nio/ByteBuffer;)V

    :cond_4b
    :goto_4b
    return-void
.end method
