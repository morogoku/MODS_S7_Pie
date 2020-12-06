.class public Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/model/DynamicLockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBoxData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;
    }
.end annotation


# instance fields
.field mClockInfo:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock_info"
    .end annotation
.end field

.field mExpandable:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expandable"
    .end annotation
.end field

.field mServiceBoxTop:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_box_top"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/lockstar/model/DynamicLockData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/lockstar/model/DynamicLockData;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->this$0:Lcom/android/systemui/lockstar/model/DynamicLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    nop

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->clone()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v1, 0x1

    nop

    :cond_6
    return v1

    :cond_7
    return v1
.end method

.method public getClockInfo()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;-><init>(Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mClockInfo:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData$ClockInfo;

    return-object v0
.end method

.method public getExpandable()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mExpandable:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaddingTop()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->mServiceBoxTop:Ljava/lang/Integer;

    return-object v0
.end method
