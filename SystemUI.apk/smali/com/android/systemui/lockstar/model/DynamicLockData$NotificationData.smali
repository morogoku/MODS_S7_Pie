.class public Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/model/DynamicLockData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;,
        Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;
    }
.end annotation


# instance fields
.field mNotiType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_type"
    .end annotation
.end field

.field mNotificationCardData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_card_info"
    .end annotation
.end field

.field mNotificationIconOnlyData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_icon_info"
    .end annotation
.end field

.field mRecoverType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_type"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/lockstar/model/DynamicLockData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/lockstar/model/DynamicLockData;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->this$0:Lcom/android/systemui/lockstar/model/DynamicLockData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mRecoverType:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->clone()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mRecoverType:Ljava/lang/Integer;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mRecoverType:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mRecoverType:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mRecoverType:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mRecoverType:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v1, 0x1

    nop

    :cond_8
    return v1

    :cond_9
    return v1
.end method

.method public getCardData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;-><init>(Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationCardData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationCardData;

    return-object v0
.end method

.method public getIconOnlyData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;-><init>(Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData$NotificationIconOnlyData;

    return-object v0
.end method

.method public getNotiType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->mNotiType:Ljava/lang/Integer;

    return-object v0
.end method
