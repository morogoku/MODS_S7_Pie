.class Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileNodeState"
.end annotation


# static fields
.field private static final LEVEL_FN_FULL:I = 0x2

.field private static final LEVEL_FN_LOW:I = 0x1

.field private static final LEVEL_FN_NORMAL:I = 0x0

.field private static final LEVEL_FN_UNKNOWN:I = -0x1


# instance fields
.field public level:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;-><init>()V

    return-void
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->levelToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(III)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->isEntering(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(III)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->isLeaving(III)Z

    move-result v0

    return v0
.end method

.method private static isEntering(III)Z
    .registers 4

    if-lt p2, p0, :cond_9

    if-lt p1, p0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static isLeaving(III)Z
    .registers 4

    if-ge p2, p0, :cond_9

    if-ge p1, p0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static levelToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string v0, "FN_FULL"

    return-object v0

    :pswitch_b
    const-string v0, "FN_LOW"

    return-object v0

    :pswitch_e
    const-string v0, "FN_NORMAL"

    return-object v0

    :pswitch_11
    const-string v0, "FN_UNKNOWN"

    return-object v0

    :pswitch_data_14
    .packed-switch -0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
