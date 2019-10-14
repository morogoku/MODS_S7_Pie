.class public Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "UsbConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$AdapterStateChangedHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

.field private mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    new-instance v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$AdapterStateChangedHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/UsbConnectivity$1;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    return-void
.end method

.method private addOneByte([BI)[B
    .registers 7

    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    array-length v3, p1

    if-ge v2, v3, :cond_10

    aget-byte v3, p1, v2

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    aput-byte v1, v0, p2

    return-object v0
.end method

.method private includeHeader([B)[B
    .registers 7

    const/16 v0, 0x10

    new-array v0, v0, [B

    array-length v1, p1

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-ne v1, v2, :cond_19

    aput-byte v3, v0, v3

    nop

    :goto_d
    move v1, v3

    if-ge v1, v2, :cond_1c

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p1, v1

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x1

    goto :goto_d

    :cond_19
    const/4 v1, -0x2

    aput-byte v1, v0, v3

    :cond_1c
    return-object v0
.end method

.method private sendStateChanged(I)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-interface {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB State change : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "StateChangedCallback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    array-length v3, p1

    if-ge v2, v3, :cond_23

    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_28
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onConnectionStateChanged(I)V

    :cond_a
    return v1
.end method

.method public disable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public enable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabledInternally()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public openNode(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_open()I

    move-result v1

    sget-object v2, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open ccic_misc ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v1, :cond_2f

    sget-object v2, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "open fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2f
    const/4 v2, 0x5

    new-array v3, v2, [B

    fill-array-data v3, :array_7a

    iget-object v4, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v4, v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    move-result v1

    if-eq v1, v2, :cond_54

    sget-object v2, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReqS fail. invalid return value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_54
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead()[B

    move-result-object v2

    sget-object v4, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "atqs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->includeHeader([B)[B

    move-result-object v4

    return-object v4

    nop

    :array_7a
    .array-data 1
        0x0t
        0x5at
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public sendStopAuth()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    const-string v1, "close ccic_misc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    const/4 v0, 0x1

    return v0
.end method

.method public sendStopUsbAuth()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_65

    if-nez v2, :cond_65

    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_open()I

    move-result v3

    sget-object v4, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "open ccic_misc ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v3, :cond_30

    sget-object v4, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "open fail for end comd"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_30
    const/4 v4, 0x5

    new-array v5, v4, [B

    fill-array-data v5, :array_66

    iget-object v6, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v6, v5}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    move-result v3

    if-eq v3, v4, :cond_55

    sget-object v4, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End cmd fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_55
    const/4 v2, 0x1

    sget-object v4, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    const-string v6, "close ccic_misc"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    :goto_62
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_65
    return-void

    :array_66
    .array-data 1
        0x0t
        -0x22t
        -0x53t
        0x0t
        0x0t
    .end array-data
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xf

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, -0x2

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    new-array v1, v1, [B

    const/4 v3, -0x1

    aput-byte v3, v1, v4

    array-length v3, p1

    if-eq v0, v3, :cond_24

    sget-object v3, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    const-string v4, "command write fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_24
    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2d

    return-object v2

    :cond_2d
    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead()[B

    move-result-object v3

    sget-object v4, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "api: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getApiState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", receive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v3

    invoke-direct {p0, v3, v4}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->addOneByte([BI)[B

    move-result-object v4

    return-object v4
.end method

.method public setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->setStateChangedCallback(Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;)V

    return-void
.end method
