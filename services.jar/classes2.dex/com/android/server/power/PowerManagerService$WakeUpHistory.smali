.class public final Lcom/android/server/power/PowerManagerService$WakeUpHistory;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeUpHistory"
.end annotation


# static fields
.field private static final MAX_HISTORY:I = 0x32


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final reasonNum:I

.field public final reasonStr:Ljava/lang/String;

.field public final time:Ljava/lang/String;

.field public final timeMillis:J

.field public final topActivity:Ljava/lang/String;

.field public final topPackage:Ljava/lang/String;

.field public final uid:I


# direct methods
.method private constructor <init>(IJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->uid:I

    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->timeMillis:J

    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->time:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->reasonNum:I

    iput-object p6, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->reasonStr:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->packageName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->topActivity:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/power/PowerManagerService$WakeUpHistory;->topPackage:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/android/server/power/PowerManagerService$WakeUpHistory;-><init>(IJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getHistory()[Lcom/android/server/power/PowerManagerService$WakeUpHistory;
    .registers 1

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeUpHistory:Lcom/android/internal/util/RingBuffer;
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$2000()Lcom/android/internal/util/RingBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/PowerManagerService$WakeUpHistory;

    return-object v0
.end method
