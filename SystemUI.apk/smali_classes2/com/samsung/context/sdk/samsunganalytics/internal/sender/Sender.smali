.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;
    }
.end annotation


# static fields
.field private static logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLC:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    :goto_0
    move-object p1, v0

    :cond_1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    if-nez v0, :cond_5

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLC:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    invoke-virtual {p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;

    invoke-direct {v1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    invoke-virtual {p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;

    invoke-direct {v1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DMA:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    invoke-virtual {p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-direct {v1, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    :cond_4
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :goto_2
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->logSender:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    return-object v0
.end method
