.class public final Lcom/android/server/power/PowerManagerUtil$History;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "History"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;
    }
.end annotation


# static fields
.field private static final MAX_HISTORY:I = 0xc8

.field public static final REASON_AUTOBRIGHTNESS_LIMIT:I = 0x4

.field public static final REASON_CURTAIN:I = 0x8

.field public static final REASON_MASTER_LIMIT:I = 0x2

.field public static final REASON_OVERRIDE:I = 0x20

.field public static final REASON_SCALE_FACTOR:I = 0x1

.field public static final REASON_SUSTAINABLE_HBM:I = 0x10

.field public static final REASON_TEMPORARY:I = 0x40

.field private static mLastReasonMask:I

.field private static mReasonMask:I

.field private static sHistoryAutoBrightness:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;",
            ">;"
        }
    .end annotation
.end field

.field private static sHistoryChangeReason:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryAutoBrightness:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryChangeReason:Lcom/android/internal/util/RingBuffer;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    sput v0, Lcom/android/server/power/PowerManagerUtil$History;->mLastReasonMask:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAutoBrightness(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryAutoBrightness:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method

.method public static addChangeReason(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryChangeReason:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mReasonMask = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method

.method public static getAutoBrightness()[Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;
    .registers 1

    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryAutoBrightness:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    return-object v0
.end method

.method public static getAutoBrightnessSize()I
    .registers 1

    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryAutoBrightness:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    return v0
.end method

.method public static getChangeReason()[Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;
    .registers 1

    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryChangeReason:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/PowerManagerUtil$History$HistoryInternal;

    return-object v0
.end method

.method public static getChangeReasonSize()I
    .registers 1

    sget-object v0, Lcom/android/server/power/PowerManagerUtil$History;->sHistoryChangeReason:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    return v0
.end method

.method public static markBit(I)V
    .registers 2

    sget v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    or-int/2addr v0, p0

    sput v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    return-void
.end method

.method public static reasonChanged()Z
    .registers 2

    sget v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    sget v1, Lcom/android/server/power/PowerManagerUtil$History;->mLastReasonMask:I

    if-eq v0, v1, :cond_c

    sget v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    sput v0, Lcom/android/server/power/PowerManagerUtil$History;->mLastReasonMask:I

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public static unMarkBit(I)V
    .registers 3

    sget v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    not-int v1, p0

    and-int/2addr v0, v1

    sput v0, Lcom/android/server/power/PowerManagerUtil$History;->mReasonMask:I

    return-void
.end method
