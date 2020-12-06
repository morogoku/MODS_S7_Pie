.class public Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClockInfo"
.end annotation


# instance fields
.field mClockType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_type"
    .end annotation
.end field

.field mGravity:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gravity"
    .end annotation
.end field

.field mPaddingEnd:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_end"
    .end annotation
.end field

.field mPaddingStart:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "padding_start"
    .end annotation
.end field

.field mRecoverType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_type"
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->this$1:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    nop

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    nop

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->clone()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v1, 0x1

    nop

    :cond_a
    return v1

    :cond_b
    return v1
.end method

.method public getClockType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mClockType:Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getGravity()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mGravity:Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPaddingEnd()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingEnd:Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPaddingStart()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mPaddingStart:Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRecoverType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->mRecoverType:Ljava/lang/Integer;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
