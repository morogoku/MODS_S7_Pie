.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .registers 3

    const/16 v0, 0x265

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "onDaemonConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$202(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    goto :goto_2e

    :cond_20
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2e
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 54

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    const-string v0, "Invalid event from daemon (%s)"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x28b

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v2, v0, :cond_5f2

    packed-switch v2, :pswitch_data_6ce

    const/4 v12, 0x7

    const/4 v13, 0x6

    packed-switch v2, :pswitch_data_6d6

    const/16 v14, 0x9

    const/16 v15, 0x8

    packed-switch v2, :pswitch_data_6e4

    goto/16 :goto_6cc

    :pswitch_2b
    :try_start_2b
    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    aget-object v0, v3, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    aget-object v20, v3, v9

    aget-object v0, v3, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v6, v3, v13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    packed-switch v0, :pswitch_data_6ee

    goto/16 :goto_cf

    :pswitch_50
    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mTcpOptimizerLogger:Lcom/android/server/TcpOptimizerLogger;
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->access$1900(Lcom/android/server/NetworkManagementService;)Lcom/android/server/TcpOptimizerLogger;

    move-result-object v6

    new-instance v8, Lcom/android/server/TcpStats;

    aget-object v23, v3, v12

    aget-object v24, v3, v15

    iget-object v9, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->isScreenOn()Z
    invoke-static {v9}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v16, v8

    move/from16 v21, v0

    invoke-direct/range {v16 .. v25}, Lcom/android/server/TcpStats;-><init>(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v6, v8}, Lcom/android/server/TcpOptimizerLogger;->add(Lcom/android/server/TcpStats;)V

    goto :goto_cf

    :pswitch_71
    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mTcpOptimizerLogger:Lcom/android/server/TcpOptimizerLogger;
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->access$1900(Lcom/android/server/NetworkManagementService;)Lcom/android/server/TcpOptimizerLogger;

    move-result-object v6

    new-instance v8, Lcom/android/server/TcpStats;

    aget-object v30, v3, v12

    aget-object v9, v3, v15

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    aget-object v9, v3, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    iget-object v9, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->isScreenOn()Z
    invoke-static {v9}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    move-object/from16 v23, v8

    move/from16 v24, v17

    move/from16 v25, v18

    move/from16 v26, v19

    move-object/from16 v27, v20

    move/from16 v28, v0

    move/from16 v29, v22

    invoke-direct/range {v23 .. v33}, Lcom/android/server/TcpStats;-><init>(IIILjava/lang/String;IILjava/lang/String;IILjava/lang/Boolean;)V

    invoke-virtual {v6, v8}, Lcom/android/server/TcpOptimizerLogger;->add(Lcom/android/server/TcpStats;)V

    goto :goto_cf

    :pswitch_a6
    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mTcpOptimizerLogger:Lcom/android/server/TcpOptimizerLogger;
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->access$1900(Lcom/android/server/NetworkManagementService;)Lcom/android/server/TcpOptimizerLogger;

    move-result-object v6

    new-instance v8, Lcom/android/server/TcpStats;

    aget-object v30, v3, v12

    iget-object v9, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->isScreenOn()Z
    invoke-static {v9}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v23, v8

    move/from16 v24, v17

    move/from16 v25, v18

    move/from16 v26, v19

    move-object/from16 v27, v20

    move/from16 v28, v0

    move/from16 v29, v22

    invoke-direct/range {v23 .. v31}, Lcom/android/server/TcpStats;-><init>(IIILjava/lang/String;IILjava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v6, v8}, Lcom/android/server/TcpOptimizerLogger;->add(Lcom/android/server/TcpStats;)V
    :try_end_ce
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_ce} :catch_d0

    nop

    :goto_cf
    goto :goto_dc

    :catch_d0
    move-exception v0

    const-string v6, "NetworkManagement"

    const-string/jumbo v8, "parsing err"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_dc
    return v4

    :pswitch_dd
    :try_start_dd
    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v15, v3, v11

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aget-object v16, v3, v10

    aget-object v12, v3, v9

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget-object v17, v3, v8

    move-object/from16 v34, v17

    const/16 v17, -0x1

    const/16 v18, -0x1

    iget-object v13, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v13

    const-string v8, "connectivity"

    invoke-virtual {v13, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_115

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    if-eqz v13, :cond_115

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    move/from16 v18, v19

    :cond_115
    move/from16 v13, v18

    if-ltz v0, :cond_125

    iget-object v9, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mDnsErrorListStr:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lt v0, v9, :cond_123

    goto :goto_125

    :cond_123
    :goto_123
    move v9, v0

    goto :goto_12f

    :cond_125
    :goto_125
    iget-object v9, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mDnsErrorListStr:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v0, v9, -0x1

    goto :goto_123

    :goto_12f
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    move/from16 v36, v0

    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v10, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v10

    move/from16 v4, v36

    invoke-direct {v0, v10, v4}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    move-object v10, v0

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    move-object/from16 v37, v0

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    invoke-virtual {v10, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    move/from16 v38, v0

    const/4 v0, 0x0

    move-object/from16 v14, v37

    if-eqz v14, :cond_160

    invoke-virtual {v14}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v19
    :try_end_15e
    .catch Ljava/lang/NumberFormatException; {:try_start_dd .. :try_end_15e} :catch_2d1

    move/from16 v0, v19

    :cond_160
    move/from16 v39, v0

    const/16 v0, 0x14

    if-ne v12, v0, :cond_271

    if-nez v13, :cond_271

    :try_start_168
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_16d} :catch_251
    .catch Ljava/lang/NumberFormatException; {:try_start_168 .. :try_end_16d} :catch_2d1

    move-object/from16 v40, v0

    :try_start_16f
    const-string v0, "NetworkManagement"

    const-string/jumbo v6, "sending DNS"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catchall {:try_start_16f .. :try_end_177} :catchall_242

    const/16 v0, 0x3e8

    move-object/from16 v6, v40

    :try_start_17b
    invoke-virtual {v6, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const-string v0, "\\."
    :try_end_180
    .catchall {:try_start_17b .. :try_end_180} :catchall_23a

    move-object/from16 v11, v34

    :try_start_182
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V
    :try_end_18b
    .catchall {:try_start_182 .. :try_end_18b} :catchall_234

    move/from16 v41, v4

    :try_start_18d
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_192
    .catchall {:try_start_18d .. :try_end_192} :catchall_230

    move-object/from16 v42, v8

    const/4 v7, 0x2

    :try_start_195
    new-array v8, v7, [B

    invoke-virtual {v2, v8}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v43, v2

    new-array v2, v7, [B

    fill-array-data v2, :array_700

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v2, v7, [B

    fill-array-data v2, :array_706

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v2, v7, [B

    fill-array-data v2, :array_70c

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v2, v7, [B

    fill-array-data v2, :array_712

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v2, v7, [B

    fill-array-data v2, :array_718

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    array-length v2, v0

    const/4 v7, 0x0

    :goto_1c9
    if-ge v7, v2, :cond_1eb

    aget-object v19, v0, v7

    move-object/from16 v44, v19

    move-object/from16 v45, v0

    const-string v0, "US-ASCII"

    move/from16 v46, v2

    move-object/from16 v2, v44

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object/from16 v47, v2

    array-length v2, v0

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v45

    move/from16 v2, v46

    goto :goto_1c9

    :cond_1eb
    move-object/from16 v45, v0

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x2

    new-array v0, v2, [B

    fill-array-data v0, :array_71e

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v0, v2, [B

    fill-array-data v0, :array_724

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v2, Ljava/net/DatagramPacket;

    array-length v7, v0

    move-object/from16 v48, v4

    const-string v4, "8.8.8.8"

    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object/from16 v49, v8

    const/16 v8, 0x35

    invoke-direct {v2, v0, v7, v4, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v6, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    array-length v4, v0

    new-array v4, v4, [B

    new-instance v7, Ljava/net/DatagramPacket;

    array-length v8, v4

    invoke-direct {v7, v4, v8}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v6, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_227
    .catchall {:try_start_195 .. :try_end_227} :catchall_22e

    const/16 v17, 0x0

    :try_start_229
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    nop

    goto :goto_277

    :catchall_22e
    move-exception v0

    goto :goto_24b

    :catchall_230
    move-exception v0

    move-object/from16 v42, v8

    goto :goto_24b

    :catchall_234
    move-exception v0

    move/from16 v41, v4

    move-object/from16 v42, v8

    goto :goto_24b

    :catchall_23a
    move-exception v0

    move/from16 v41, v4

    move-object/from16 v42, v8

    move-object/from16 v11, v34

    goto :goto_24b

    :catchall_242
    move-exception v0

    move/from16 v41, v4

    move-object/from16 v42, v8

    move-object/from16 v11, v34

    move-object/from16 v6, v40

    :goto_24b
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    throw v0
    :try_end_24f
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_24f} :catch_24f
    .catch Ljava/lang/NumberFormatException; {:try_start_229 .. :try_end_24f} :catch_2d1

    :catch_24f
    move-exception v0

    goto :goto_258

    :catch_251
    move-exception v0

    move/from16 v41, v4

    move-object/from16 v42, v8

    move-object/from16 v11, v34

    :goto_258
    :try_start_258
    const-string v2, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException error: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    goto :goto_277

    :cond_271
    move/from16 v41, v4

    move-object/from16 v42, v8

    move-object/from16 v11, v34

    :goto_277
    move/from16 v0, v17

    iget-object v2, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mDnsErrorInfoLog:Lcom/android/server/NetworkManagementService$DnsLocalLog;
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->access$2100(Lcom/android/server/NetworkManagementService;)Lcom/android/server/NetworkManagementService$DnsLocalLog;

    move-result-object v2

    const-string v4, "%02d %s %d %d %d %d %d %s %s"

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mDnsErrorListStr:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    move/from16 v7, v38

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v17, 0x5

    aput-object v8, v6, v17

    move/from16 v8, v39

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v19, 0x6

    aput-object v17, v6, v19

    const/16 v17, 0x7

    aput-object v16, v6, v17

    const/16 v17, 0x8

    aput-object v18, v6, v17

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/NetworkManagementService$DnsLocalLog;->log(Ljava/lang/String;)V
    :try_end_2cf
    .catch Ljava/lang/NumberFormatException; {:try_start_258 .. :try_end_2cf} :catch_2d1

    const/4 v2, 0x1

    return v2

    :catch_2d1
    move-exception v0

    const-string v2, "NetworkManagement"

    const-string v4, "Getting error parsing Dns Error Cause"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_6cc

    :pswitch_2de
    const/4 v2, 0x1

    :try_start_2df
    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0xa

    new-array v6, v4, [I

    new-array v4, v4, [I

    const/4 v7, 0x3

    move v8, v7

    const/4 v7, 0x0

    :goto_2f5
    if-ge v7, v2, :cond_30e

    add-int/lit8 v9, v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v8, v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f5

    :cond_30e
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.samsung.intent.action.BIG_DATA_MOBILE_DATA"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "category"

    const-string v10, "DNSE"

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "totc"

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "totf"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v9, 0x0

    :goto_32c
    if-ge v9, v2, :cond_381

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fres"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aget v11, v6, v9

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fsrv"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aget v11, v4, v9

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "NetworkManagement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ReportBigdata failReason = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v6, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " failServer = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v4, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_32c

    :cond_381
    iget-object v9, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v9, "NetworkManagement"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ReportBigdata totalSuccess = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a0
    .catch Ljava/lang/NumberFormatException; {:try_start_2df .. :try_end_3a0} :catch_3a2

    const/4 v9, 0x1

    return v9

    :catch_3a2
    move-exception v0

    const-string v2, "NetworkManagement"

    const-string v4, "Getting error parsing DNSE"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_6cc

    :pswitch_3af
    const/4 v2, 0x1

    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    aget-object v0, v3, v4

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v4, v0

    :try_start_3be
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_3c5
    .catch Landroid/os/RemoteException; {:try_start_3be .. :try_end_3c5} :catch_3c7

    goto/16 :goto_6cc

    :catch_3c7
    move-exception v0

    goto/16 :goto_6cc

    :pswitch_3ca
    const/4 v2, 0x1

    aget-object v0, v3, v2

    const-string v2, "Route"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_440

    array-length v0, v3

    const/4 v2, 0x6

    if-lt v0, v2, :cond_440

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v6, v2

    const/16 v35, 0x4

    move-object v2, v0

    :goto_3e0
    move/from16 v0, v35

    add-int/lit8 v7, v0, 0x1

    array-length v8, v3

    if-ge v7, v8, :cond_415

    if-eqz v4, :cond_415

    aget-object v7, v3, v0

    const-string/jumbo v8, "dev"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3fd

    if-nez v6, :cond_3fb

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v3, v7

    goto :goto_412

    :cond_3fb
    const/4 v4, 0x0

    goto :goto_412

    :cond_3fd
    aget-object v7, v3, v0

    const-string/jumbo v8, "via"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_411

    if-nez v2, :cond_40f

    add-int/lit8 v7, v0, 0x1

    aget-object v2, v3, v7

    goto :goto_412

    :cond_40f
    const/4 v4, 0x0

    goto :goto_412

    :cond_411
    const/4 v4, 0x0

    :goto_412
    add-int/lit8 v35, v0, 0x2

    goto :goto_3e0

    :cond_415
    if-eqz v4, :cond_43a

    const/4 v0, 0x0

    if-eqz v2, :cond_422

    :try_start_41a
    invoke-static {v2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    move-object v0, v7

    goto :goto_422

    :catch_420
    move-exception v0

    goto :goto_439

    :cond_422
    :goto_422
    new-instance v7, Landroid/net/RouteInfo;

    new-instance v8, Landroid/net/IpPrefix;

    const/4 v9, 0x3

    aget-object v9, v3, v9

    invoke-direct {v8, v9}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8, v0, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v9, 0x2

    aget-object v9, v3, v9

    # invokes: Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    invoke-static {v8, v9, v7}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_437
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41a .. :try_end_437} :catch_420

    const/4 v8, 0x1

    return v8

    :goto_439
    nop

    :cond_43a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_440
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_446
    array-length v0, v3

    const/4 v2, 0x6

    if-ne v0, v2, :cond_483

    const/4 v2, 0x1

    aget-object v0, v3, v2

    const-string v2, "DnsInfo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_483

    const/4 v2, 0x2

    aget-object v0, v3, v2

    const-string/jumbo v2, "servers"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_483

    const/4 v2, 0x4

    :try_start_462
    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_468
    .catch Ljava/lang/NumberFormatException; {:try_start_462 .. :try_end_468} :catch_47c

    nop

    nop

    const/4 v2, 0x5

    aget-object v0, v3, v2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v4, 0x3

    aget-object v4, v3, v4

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    invoke-static {v2, v4, v6, v7, v0}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    goto :goto_483

    :catch_47c
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_483
    :goto_483
    const/4 v2, 0x1

    return v2

    :pswitch_485
    move v2, v4

    array-length v0, v3

    const/4 v4, 0x7

    if-lt v0, v4, :cond_4d8

    aget-object v0, v3, v2

    const-string v2, "Address"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d8

    const/4 v2, 0x4

    aget-object v0, v3, v2

    move-object v2, v0

    const/4 v4, 0x5

    :try_start_499
    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x6

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Landroid/net/LinkAddress;

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-direct {v6, v7, v0, v4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_4ae
    .catch Ljava/lang/NumberFormatException; {:try_start_499 .. :try_end_4ae} :catch_4d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_499 .. :try_end_4ae} :catch_4ca

    move-object v0, v6

    nop

    nop

    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-string/jumbo v6, "updated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c3

    iget-object v4, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v4, v2, v0}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_4c8

    :cond_4c3
    iget-object v4, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v4, v2, v0}, Lcom/android/server/NetworkManagementService;->access$1500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    :goto_4c8
    const/4 v4, 0x1

    return v4

    :catch_4ca
    move-exception v0

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_4d1
    move-exception v0

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_4d8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4de
    array-length v0, v3

    const/4 v2, 0x4

    if-lt v0, v2, :cond_52e

    const/4 v2, 0x1

    aget-object v0, v3, v2

    const-string v2, "IfaceClass"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52e

    const-wide/16 v6, 0x0

    const/4 v2, -0x1

    array-length v0, v3

    const/4 v4, 0x5

    if-lt v0, v4, :cond_50b

    const/4 v4, 0x4

    :try_start_4f5
    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v6, v8

    array-length v0, v3

    const/4 v4, 0x6

    if-ne v0, v4, :cond_508

    const/4 v4, 0x5

    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_507
    .catch Ljava/lang/NumberFormatException; {:try_start_4f5 .. :try_end_507} :catch_509

    move v2, v0

    :cond_508
    goto :goto_50f

    :catch_509
    move-exception v0

    goto :goto_50f

    :cond_50b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    :goto_50f
    const/4 v4, 0x2

    aget-object v0, v3, v4

    const-string v4, "active"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v8, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v4, 0x3

    aget-object v9, v3, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v0, :cond_525

    const/4 v10, 0x3

    goto :goto_526

    :cond_525
    const/4 v10, 0x1

    :goto_526
    const/4 v14, 0x0

    move-wide v11, v6

    move v13, v2

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJIZ)V
    invoke-static/range {v8 .. v14}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;IIJIZ)V

    const/4 v4, 0x1

    return v4

    :cond_52e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_534
    array-length v0, v3

    const/4 v2, 0x5

    if-lt v0, v2, :cond_561

    aget-object v0, v3, v4

    const-string/jumbo v2, "limit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_561

    const/4 v2, 0x2

    aget-object v0, v3, v2

    const-string v2, "alert"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55b

    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v2, 0x3

    aget-object v2, v3, v2

    const/4 v4, 0x4

    aget-object v4, v3, v4

    # invokes: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v4}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_55b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_561
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_567
    array-length v0, v3

    const/4 v2, 0x4

    if-lt v0, v2, :cond_5ec

    const/4 v2, 0x1

    aget-object v0, v3, v2

    const-string v2, "Iface"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5ec

    const/4 v2, 0x2

    aget-object v0, v3, v2

    const-string v4, "added"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58b

    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v4, 0x3

    aget-object v2, v3, v4

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_58b
    const/4 v4, 0x3

    const/4 v6, 0x1

    aget-object v0, v3, v2

    const-string/jumbo v7, "removed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a0

    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v2, v3, v4

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    return v6

    :cond_5a0
    aget-object v0, v3, v2

    const-string v2, "changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c2

    array-length v0, v3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5c2

    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v2, 0x3

    aget-object v2, v3, v2

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string/jumbo v6, "up"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v4}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    return v2

    :cond_5c2
    const/4 v2, 0x2

    aget-object v0, v3, v2

    const-string/jumbo v2, "linkstate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e6

    array-length v0, v3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5e6

    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v2, 0x3

    aget-object v2, v3, v2

    const/4 v4, 0x4

    aget-object v4, v3, v4

    const-string/jumbo v6, "up"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v4}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    return v2

    :cond_5e6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5ec
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x2

    aget-object v2, v3, v2

    const-string v4, ""

    const/4 v6, 0x0

    :goto_5fd
    array-length v7, v3

    if-ge v6, v7, :cond_652

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-boolean v7, Landroid/net/wifi/WifiApCust;->DBG:Z

    if-nez v7, :cond_639

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x11

    if-ne v7, v8, :cond_639

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v6

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v6

    const/16 v10, 0xc

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_64f

    :cond_639
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_64f
    add-int/lit8 v6, v6, 0x1

    goto :goto_5fd

    :cond_652
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiApCust;->addMHSClientHistoryLog(Ljava/lang/String;)V

    const-string/jumbo v6, "sta_join"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66f

    const-string v6, "NetworkManagement"

    const-string/jumbo v7, "sta_join  do nothing"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :cond_66f
    const-string/jumbo v6, "sta_dhcpack"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6cc

    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/android/server/NetworkManagementService;->intent:Landroid/content/Intent;
    invoke-static {v6, v7}, Lcom/android/server/NetworkManagementService;->access$602(Lcom/android/server/NetworkManagementService;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->intent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "MAC"

    const/4 v8, 0x4

    aget-object v8, v3, v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->intent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "IP"

    const/4 v8, 0x3

    aget-object v8, v3, v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->intent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "DEVICE"

    const/4 v8, 0x5

    aget-object v8, v3, v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->intent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->intent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;)Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v6, 0x1

    return v6

    :cond_6cc
    :goto_6cc
    const/4 v2, 0x0

    return v2

    :pswitch_data_6ce
    .packed-switch 0x258
        :pswitch_567
        :pswitch_534
    .end packed-switch

    :pswitch_data_6d6
    .packed-switch 0x265
        :pswitch_4de
        :pswitch_485
        :pswitch_446
        :pswitch_3ca
        :pswitch_3af
    .end packed-switch

    :pswitch_data_6e4
    .packed-switch 0x2b9
        :pswitch_2de
        :pswitch_dd
        :pswitch_2b
    .end packed-switch

    :pswitch_data_6ee
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_71
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_a6
        :pswitch_a6
    .end packed-switch

    :array_700
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_706
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_70c
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_712
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_718
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_71e
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_724
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method
