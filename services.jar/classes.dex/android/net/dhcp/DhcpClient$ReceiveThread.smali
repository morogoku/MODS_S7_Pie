.class Landroid/net/dhcp/DhcpClient$ReceiveThread;
.super Ljava/lang/Thread;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private volatile mStopped:Z

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x5dc

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    return-void
.end method


# virtual methods
.method public halt()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    # invokes: Landroid/net/dhcp/DhcpClient;->closeSockets()V
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$000(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method

.method public run()V
    .registers 10

    # getter for: Landroid/net/dhcp/DhcpClient;->DBG:Z
    invoke-static {}, Landroid/net/dhcp/DhcpClient;->access$100()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "DhcpClient"

    const-string v1, "Receive thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_d
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    if-nez v0, :cond_ad

    const/4 v0, 0x0

    move v1, v0

    :try_start_13
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$200(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    array-length v4, v4

    invoke-static {v2, v3, v0, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    move v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mPacket:[B

    invoke-static {v3, v1, v0}, Landroid/net/dhcp/DhcpPacket;->decodeFullPacket([BII)Landroid/net/dhcp/DhcpPacket;

    move-result-object v3

    move-object v2, v3

    # getter for: Landroid/net/dhcp/DhcpClient;->DBG:Z
    invoke-static {}, Landroid/net/dhcp/DhcpClient;->access$100()Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "DhcpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    const v4, 0x30066

    invoke-virtual {v3, v4, v2}, Landroid/net/dhcp/DhcpClient;->sendMessage(ILjava/lang/Object;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_4f} :catch_97
    .catch Landroid/system/ErrnoException; {:try_start_13 .. :try_end_4f} :catch_97
    .catch Landroid/net/dhcp/DhcpPacket$ParseException; {:try_start_13 .. :try_end_4f} :catch_50

    goto :goto_aa

    :catch_50
    move-exception v2

    const-string v3, "DhcpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t parse packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/dhcp/DhcpPacket$ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Landroid/net/dhcp/DhcpPacket$ParseException;->errorCode:I

    sget v4, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    if-ne v3, v4, :cond_8f

    const v3, 0x534e4554

    const-string v4, "31850211"

    const/4 v5, -0x1

    const-class v6, Landroid/net/dhcp/DhcpPacket$ParseException;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v0

    const/4 v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v0, 0x2

    aput-object v6, v7, v0

    invoke-static {v3, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_8f
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    iget v3, v2, Landroid/net/dhcp/DhcpPacket$ParseException;->errorCode:I

    # invokes: Landroid/net/dhcp/DhcpClient;->logError(I)V
    invoke-static {v0, v3}, Landroid/net/dhcp/DhcpClient;->access$300(Landroid/net/dhcp/DhcpClient;I)V

    goto :goto_ab

    :catch_97
    move-exception v0

    iget-boolean v2, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->mStopped:Z

    if-nez v2, :cond_aa

    const-string v2, "DhcpClient"

    const-string v3, "Read error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$ReceiveThread;->this$0:Landroid/net/dhcp/DhcpClient;

    sget v3, Landroid/net/metrics/DhcpErrorEvent;->RECEIVE_ERROR:I

    # invokes: Landroid/net/dhcp/DhcpClient;->logError(I)V
    invoke-static {v2, v3}, Landroid/net/dhcp/DhcpClient;->access$300(Landroid/net/dhcp/DhcpClient;I)V

    :cond_aa
    :goto_aa
    nop

    :goto_ab
    goto/16 :goto_d

    :cond_ad
    # getter for: Landroid/net/dhcp/DhcpClient;->DBG:Z
    invoke-static {}, Landroid/net/dhcp/DhcpClient;->access$100()Z

    move-result v0

    if-eqz v0, :cond_ba

    const-string v0, "DhcpClient"

    const-string v1, "Receive thread stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    return-void
.end method
