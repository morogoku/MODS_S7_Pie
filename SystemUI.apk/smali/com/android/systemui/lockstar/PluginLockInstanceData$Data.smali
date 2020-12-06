.class public Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;
.super Ljava/lang/Object;
.source "PluginLockInstanceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/PluginLockInstanceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;
    }
.end annotation


# instance fields
.field private mNumber:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field

.field private mRecoverData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_data"
    .end annotation
.end field

.field private mTimeStamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_stamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->mNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoverData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;-><init>(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->mTimeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public setNumber(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->mNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setRecoverData(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->mTimeStamp:Ljava/lang/Long;

    return-void
.end method
